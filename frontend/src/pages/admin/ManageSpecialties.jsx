import React, { useState, useEffect } from 'react';

const ManageSpecialties = () => {
  const [specialties, setSpecialties] = useState([]);
  const [loading, setLoading] = useState(true);
  const [showModal, setShowModal] = useState(false);
  const [editingSpecialty, setEditingSpecialty] = useState(null);
  const [searchTerm, setSearchTerm] = useState('');
  
  const [formData, setFormData] = useState({
    name: '',
    description: '',
    imageUrl: ''
  });

  useEffect(() => {
    fetchSpecialties();
  }, []);

  const fetchSpecialties = async () => {
    setLoading(true);
    try {
      const response = await fetch('http://localhost:8081/api/specialties');
      if (response.ok) {
        const data = await response.json();
        setSpecialties(data);
      }
    } catch (error) {
      console.error("Error fetching specialties", error);
    } finally {
      setLoading(false);
    }
  };

  const handleDelete = async (id) => {
    if (window.confirm("Bạn có chắc muốn xóa chuyên khoa này?")) {
      try {
        const response = await fetch(`http://localhost:8081/api/specialties/${id}`, { method: 'DELETE' });
        if (response.ok) {
          fetchSpecialties();
        } else {
          alert("Xóa thất bại! Có thể có bác sĩ đang thuộc chuyên khoa này.");
        }
      } catch (error) {
        alert("Lỗi kết nối máy chủ");
      }
    }
  };

  const handleEdit = (specialty) => {
    setEditingSpecialty(specialty);
    setFormData({
      name: specialty.name,
      description: specialty.description,
      imageUrl: specialty.imageUrl
    });
    setShowModal(true);
  };

  const handleAddNew = () => {
    setEditingSpecialty(null);
    setFormData({ name: '', description: '', imageUrl: '' });
    setShowModal(true);
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    const url = editingSpecialty 
      ? `http://localhost:8081/api/specialties/${editingSpecialty.id}` 
      : `http://localhost:8081/api/specialties`;
    const method = editingSpecialty ? 'PUT' : 'POST';

    try {
      const response = await fetch(url, {
        method,
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(formData)
      });
      if (response.ok) {
        setShowModal(false);
        fetchSpecialties();
        alert(editingSpecialty ? "Cập nhật thành công" : "Thêm mới thành công");
      } else {
        alert("Có lỗi xảy ra");
      }
    } catch (error) {
      alert("Lỗi kết nối máy chủ");
    }
  };

  const filteredSpecialties = specialties.filter(
    (s) =>
      s.name?.toLowerCase().includes(searchTerm.toLowerCase()) ||
      s.description?.toLowerCase().includes(searchTerm.toLowerCase()) ||
      String(s.id).includes(searchTerm)
  );

  return (
    <div className="space-y-6 animate-fadeIn">
      <div className="bg-white p-6 rounded-3xl shadow-sm border border-slate-100 flex flex-col md:flex-row justify-between items-start md:items-center gap-4">
        <div>
          <h2 className="text-2xl font-black text-slate-800">
            Quản lý Chuyên khoa
          </h2>
          <p className="text-slate-500 font-semibold mt-1">
            Danh sách các chuyên khoa trên hệ thống
          </p>
        </div>

        <div className="flex gap-4 w-full md:w-auto">
          <div className="relative w-full md:w-64">
            <input
              type="text"
              placeholder="Tìm kiếm chuyên khoa..."
              className="w-full pl-10 pr-4 py-2 rounded-xl border border-slate-200 focus:outline-none focus:border-teal-500 transition-colors"
              value={searchTerm}
              onChange={(e) => setSearchTerm(e.target.value)}
            />
            <i className="fas fa-search absolute left-3 top-1/2 -translate-y-1/2 text-slate-400"></i>
          </div>
          <div className="bg-teal-50 text-teal-600 px-4 py-2 rounded-xl font-bold text-sm whitespace-nowrap flex items-center h-full border border-teal-100">
            Tổng: {filteredSpecialties.length}
          </div>
          <button
            onClick={handleAddNew}
            className="bg-teal-600 hover:bg-teal-700 text-white px-4 py-2 rounded-xl font-bold text-sm whitespace-nowrap flex items-center gap-2 transition shadow-sm h-full"
          >
            <i className="fas fa-plus"></i> Thêm chuyên khoa
          </button>
        </div>
      </div>

      <div className="bg-white rounded-3xl shadow-sm border border-slate-100 overflow-hidden">
        {loading ? (
          <div className="p-10 text-center">
            <div className="animate-spin rounded-full h-8 w-8 border-b-2 border-teal-600 mx-auto"></div>
          </div>
        ) : (
          <div className="overflow-x-auto">
            <table className="w-full text-left">
              <thead>
                <tr className="bg-slate-50 border-b border-slate-100">
                  <th className="px-6 py-4 font-bold text-slate-400 uppercase text-xs tracking-wider">
                    ID
                  </th>
                  <th className="px-6 py-4 font-bold text-slate-400 uppercase text-xs tracking-wider">
                    Chuyên khoa
                  </th>
                  <th className="px-6 py-4 font-bold text-slate-400 uppercase text-xs tracking-wider">
                    Mô tả
                  </th>
                  <th className="px-6 py-4 font-bold text-slate-400 uppercase text-xs tracking-wider">
                    Trạng thái
                  </th>
                  <th className="px-6 py-4 font-bold text-slate-400 uppercase text-xs tracking-wider text-right">
                    Thao tác
                  </th>
                </tr>
              </thead>
              <tbody className="divide-y divide-slate-100">
                {filteredSpecialties.length > 0 ? (
                  filteredSpecialties.map((specialty) => (
                    <tr
                      key={specialty.id}
                      className="hover:bg-slate-50 transition group"
                    >
                      <td className="px-6 py-4">
                        <span className="px-3 py-1 bg-slate-100 text-slate-700 rounded-lg font-mono text-sm font-bold border border-slate-200 shadow-sm">
                          CK-{String(specialty.id).padStart(3, "0")}
                        </span>
                      </td>
                      <td className="px-6 py-4">
                        <div className="flex items-center gap-4">
                          <div className="w-12 h-12 rounded-2xl bg-slate-100 flex items-center justify-center text-slate-400 font-bold text-xl overflow-hidden shadow-sm">
                            {specialty.imageUrl ? (
                              <img
                                src={specialty.imageUrl}
                                className="w-full h-full object-cover"
                                alt=""
                              />
                            ) : (
                              <i className="fas fa-stethoscope text-teal-500"></i>
                            )}
                          </div>
                          <div>
                            <p className="font-bold text-slate-800 text-base">
                              {specialty.name || "Chưa cập nhật"}
                            </p>
                          </div>
                        </div>
                      </td>
                      <td className="px-6 py-4">
                        <p className="text-sm font-medium text-slate-500 line-clamp-2 max-w-xs">
                          {specialty.description || "Chưa có mô tả"}
                        </p>
                      </td>
                      <td className="px-6 py-4">
                        <span className="px-3 py-1 rounded-full text-xs font-black uppercase tracking-widest bg-teal-100 text-teal-600">
                          Hoạt động
                        </span>
                      </td>
                      <td className="px-6 py-4 text-right whitespace-nowrap">
                        <button
                          onClick={() => handleEdit(specialty)}
                          className="w-10 h-10 rounded-xl bg-slate-50 text-slate-600 hover:bg-blue-600 hover:text-white transition shadow-sm inline-flex items-center justify-center mr-2"
                          title="Sửa thông tin"
                        >
                          <i className="fas fa-edit"></i>
                        </button>
                        <button
                          onClick={() => handleDelete(specialty.id)}
                          className="w-10 h-10 rounded-xl bg-slate-50 text-slate-600 hover:bg-red-600 hover:text-white transition shadow-sm inline-flex items-center justify-center"
                          title="Xóa chuyên khoa"
                        >
                          <i className="fas fa-trash"></i>
                        </button>
                      </td>
                    </tr>
                  ))
                ) : (
                  <tr>
                    <td
                      colSpan="5"
                      className="px-6 py-8 text-center text-slate-500 font-medium"
                    >
                      Không tìm thấy chuyên khoa nào phù hợp.
                    </td>
                  </tr>
                )}
              </tbody>
            </table>
          </div>
        )}
      </div>

      {showModal && (
        <div className="fixed inset-0 z-50 flex items-center justify-center p-4 bg-slate-900/50 backdrop-blur-sm animate-fadeIn">
          <div className="bg-white rounded-3xl shadow-2xl w-full max-w-lg overflow-hidden">
            <div className="p-6 border-b border-slate-100 flex justify-between items-center">
              <h3 className="text-xl font-bold text-slate-800">
                {editingSpecialty ? 'Chỉnh sửa Chuyên khoa' : 'Thêm Chuyên khoa mới'}
              </h3>
              <button onClick={() => setShowModal(false)} className="text-slate-400 hover:text-slate-600">
                <i className="fas fa-times text-xl"></i>
              </button>
            </div>
            
            <form onSubmit={handleSubmit} className="p-6 space-y-4">
              <div>
                <label className="block text-sm font-bold text-slate-600 mb-1">Tên chuyên khoa *</label>
                <input required type="text" className="w-full p-3 rounded-xl border border-slate-200 focus:border-teal-500 outline-none" value={formData.name} onChange={e => setFormData({...formData, name: e.target.value})} />
              </div>
              
              <div>
                <label className="block text-sm font-bold text-slate-600 mb-1">URL Hình ảnh</label>
                <input type="text" placeholder="https://..." className="w-full p-3 rounded-xl border border-slate-200 focus:border-teal-500 outline-none" value={formData.imageUrl} onChange={e => setFormData({...formData, imageUrl: e.target.value})} />
              </div>
              
              <div>
                <label className="block text-sm font-bold text-slate-600 mb-1">Mô tả</label>
                <textarea rows="4" required className="w-full p-3 rounded-xl border border-slate-200 focus:border-teal-500 outline-none resize-none" value={formData.description} onChange={e => setFormData({...formData, description: e.target.value})}></textarea>
              </div>

              <div className="pt-4 flex justify-end gap-3">
                <button type="button" onClick={() => setShowModal(false)} className="px-6 py-2.5 rounded-full font-bold text-slate-600 hover:bg-slate-100 transition">
                  Hủy
                </button>
                <button type="submit" className="px-6 py-2.5 rounded-full font-bold text-white bg-teal-600 hover:bg-teal-700 shadow-lg transition">
                  Lưu lại
                </button>
              </div>
            </form>
          </div>
        </div>
      )}
    </div>
  );
};

export default ManageSpecialties;
