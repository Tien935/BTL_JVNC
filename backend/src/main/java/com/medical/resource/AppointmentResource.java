package com.medical.resource;

import com.medical.entity.Appointment;
import com.medical.entity.User;
import com.medical.entity.Doctor;
import jakarta.transaction.Transactional;
import jakarta.ws.rs.DELETE;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.PUT;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.PathParam;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import java.util.List;
import java.util.Random;

@Path("/appointments")
@Produces(MediaType.APPLICATION_JSON)
public class AppointmentResource {

    @GET
    public List<Appointment> getAll() {
        return Appointment.list("order by date desc, time desc");
    }

    @GET
    @Path("/doctor/{doctorId}")
    public List<Appointment> getByDoctor(@PathParam("doctorId") Long doctorId) {
        return Appointment.list("doctor.id = ?1 order by date desc, time desc", doctorId);
    }

    @GET
    @Path("/patient/{patientId}")
    public List<Appointment> getByPatientId(@PathParam("patientId") Long patientId) {
        return Appointment.list("patient.id = ?1 order by date desc, time desc", patientId);
    }

    @POST
    @Transactional
    public Response create(Appointment appointment) {
        if (appointment.id == null) {
            appointment.id = "PK-" + (1000 + new Random().nextInt(9000));
        }

        // Check for double booking
        if (appointment.doctor != null && appointment.doctor.id != null && appointment.date != null && appointment.time != null) {
            long overlapping = Appointment.find("doctor.id = ?1 and date = ?2 and time = ?3 and status != 'Đã hủy' and status != 'CANCELLED' and status != 'CANCEL_REQUESTED'", 
                    appointment.doctor.id, appointment.date, appointment.time).count();
            if (overlapping > 0) {
                return Response.status(Response.Status.CONFLICT)
                        .entity("{\"error\": \"Bác sĩ đã có lịch hẹn vào thời gian này. Vui lòng chọn thời gian khác.\"}")
                        .build();
            }
        }

        // Ensure patient and doctor exist (basic check)
        if (appointment.doctor != null && appointment.doctor.id != null) {
            appointment.doctor = Doctor.findById(appointment.doctor.id);
        }
        if (appointment.patient != null && appointment.patient.id != null) {
            appointment.patient = User.findById(appointment.patient.id);
        } else {
            // Default to first user for demo
            appointment.patient = User.findAll().firstResult();
        }

        appointment.persist();
        return Response.status(Response.Status.CREATED).entity(appointment).build();
    }

    @DELETE
    @Path("/{id}")
    @Transactional
    public Response delete(@PathParam("id") String id) {
        boolean deleted = Appointment.deleteById(id);
        if (deleted) {
            return Response.noContent().build();
        }
        return Response.status(Response.Status.NOT_FOUND).build();
    }

    @PUT
    @Path("/{id}/status")
    @Transactional
    public Response updateStatus(@PathParam("id") String id, Appointment updatedAppointment) {
        Appointment appointment = Appointment.findById(id);
        if (appointment == null) {
            return Response.status(Response.Status.NOT_FOUND).build();
        }
        if (updatedAppointment.status != null) {
            appointment.status = updatedAppointment.status;
        }
        return Response.ok(appointment).build();
    }
}
