package com.medical.entity;

import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
@Table(name = "users")
public class User extends PanacheEntityBase {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long id;
    @Column(unique = true)
    public String username;
    
    public String password;
    
    @Column(name = "full_name")
    public String fullName;
    
    @Column(unique = true)
    public String email;
    
    public String phone;
    
    @Column(name = "avatar_url")
    public String avatarUrl;
    
    public String role; // PATIENT, DOCTOR, ADMIN
}
