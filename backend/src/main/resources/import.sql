INSERT IGNORE INTO specialties (id, name, description, image_url) VALUES 
(1, 'Nội tổng quát', 'Chăm sóc sức khỏe toàn diện cho người lớn', 'https://www.victoriavn.com/images/khoa-noi-tong-quat-la-mot-khoa-dac-biet.jpg'),
(2, 'Nhi khoa', 'Chăm sóc sức khỏe cho trẻ em', 'https://benhvienbacha.vn/wp-content/uploads/2023/02/review-kham-nhi-benh-vien-bac-ha-co-tot-khong.jpg'),
(3, 'Tim mạch', 'Chuyên khoa về tim và mạch máu', 'https://benhvien198.net/Images/files/khoa-phong/chuyen-khoa-tim-mach.jpg'),
(4, 'Sản phụ khoa', 'Sức khỏe phụ nữ và thai sản', 'https://bvxuyena.com.vn/wp-content/uploads/2025/04/thumbnail-6x4-khoa-san-phu-khoa-scaled.jpg'),
(5, 'Da liễu', 'Điều trị các bệnh về da', 'https://phongkhamykhoasaigon.com/wp-content/uploads/2024/08/top-3-benh-vien-da-lieu-tot-nhat-tai-tp-ho-chi-minh.png'),
(6, 'Răng Hàm Mặt', 'Chăm sóc sức khỏe răng miệng', 'https://baosonhospital.com/Upload/images-old/images/IMG_7982.JPG'),
(7, 'Tai mũi họng', 'Điều trị các bệnh lý về tai, mũi, họng', 'https://taimuihongtphcm.vn/wp-content/uploads/2024/08/cceea81a369393cdca82.jpg'),
(8, 'Cơ xương khớp', 'Chuyên khoa về cơ, xương, và khớp', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwL97-H9SnXvRDjCQ--vSifWIwcaZMFwMAsg&s');

INSERT IGNORE INTO users (id, username, password, full_name, email, phone, role) VALUES 
(1, 'patient1', 'password123', 'Nguyễn Văn A', 'patient1@example.com', '0123456789', 'PATIENT'),
(2, 'doctor_an', 'password123', 'BS. Nguyễn Văn An', 'an.nv@medical.com', '0987654321', 'DOCTOR'),
(3, 'admin', '123456', 'admin', 'admin@medical.com', '0123456789', 'ADMIN'),
(4, 'nguyenvanminh', 'password123', 'Nguyễn Văn Minh', 'minh.nguyen@example.com', '0912345678', 'PATIENT'),
(5, 'tranthihuong', 'password123', 'Trần Thị Hương', 'huong.tran@example.com', '0923456789', 'PATIENT'),
(6, 'levanhoang', 'password123', 'Lê Văn Hoàng', 'hoang.le@example.com', '0934567890', 'PATIENT'),
(7, 'phamthilan', 'password123', 'Phạm Thị Lan', 'lan.pham@example.com', '0945678901', 'PATIENT'),
(8, 'hoangvanduc', 'password123', 'Hoàng Văn Đức', 'duc.hoang@example.com', '0956789012', 'PATIENT'),
(9, 'dothimai', 'password123', 'Đỗ Thị Mai', 'mai.do@example.com', '0967890123', 'PATIENT'),
(10, 'vuthingoc', 'password123', 'Vũ Thị Ngọc', 'ngoc.vu@example.com', '0978901234', 'PATIENT'),
(11, 'buitienthanh', 'password123', 'Bùi Tiến Thành', 'thanh.bui@example.com', '0989012345', 'PATIENT'),
(12, 'dangthithu', 'password123', 'Đặng Thị Thu', 'thu.dang@example.com', '0990123456', 'PATIENT'),
(13, 'tranthibinh', 'password123', 'Trần Thị Bình', 'binh.tran@medical.com', '0901111111', 'DOCTOR'),
(14, 'levancuong', 'password123', 'Lê Văn Cường', 'cuong.le@medical.com', '0902222222', 'DOCTOR'),
(15, 'phamminhduc', 'password123', 'Phạm Minh Đức', 'duc.pham@medical.com', '0903333333', 'DOCTOR'),
(16, 'hoangthuha', 'password123', 'Hoàng Thu Hà', 'ha.hoang@medical.com', '0904444444', 'DOCTOR'),
(17, 'dokimlien', 'password123', 'Đỗ Kim Liên', 'lien.do@medical.com', '0905555555', 'DOCTOR'),
(18, 'phanthingoc', 'password123', 'Phan Thị Ngọc', 'ngoc.phan@medical.com', '0906666666', 'DOCTOR'),
(19, 'tranvannam', 'password123', 'Trần Văn Nam', 'nam.tran@medical.com', '0907777777', 'DOCTOR'),
(20, 'nguyenminhquan', 'password123', 'Nguyễn Minh Quân', 'quan.nguyen@medical.com', '0908888888', 'DOCTOR'),
(21, 'vuthanhhuong', 'password123', 'Vũ Thanh Hương', 'huong.vu@medical.com', '0909999999', 'DOCTOR'),
(22, 'lyquochung', 'password123', 'Lý Quốc Hùng', 'hung.ly@medical.com', '0910000000', 'DOCTOR'),
(23, 'dangthimai', 'password123', 'Đặng Thị Mai', 'mai.dang@medical.com', '0911111111', 'DOCTOR'),
(24, 'trangiabao', 'password123', 'Trần Gia Bảo', 'bao.tran@medical.com', '0912222222', 'DOCTOR'),
(25, 'phamkhanhlinh', 'password123', 'Phạm Khánh Linh', 'linh.pham@medical.com', '0913333333', 'DOCTOR');

INSERT IGNORE INTO doctors (id, name, specialty_id, degree, experience, image_url, description, user_id) VALUES 
(1, 'BS. Nguyễn Văn An', 1, 'Thạc sĩ, Bác sĩ', '15 năm kinh nghiệm', '	https://hthaostudio.com/wp-content/uploads/2022/03/Anh-bac-si-nam-7-min.jpg.webp', 'Với hơn 15 năm kinh nghiệm trong lĩnh vực Nội khoa, Bác sĩ An không chỉ nổi tiếng bởi chuyên môn vững vàng mà còn bởi sự tận tâm, luôn lắng nghe và thấu hiểu từng nỗi lo của bệnh nhân. Ông từng công tác tại các bệnh viện tuyến đầu và sở hữu nhiều công trình nghiên cứu về điều trị bệnh lý mãn tính.', 2),
(2, 'ThS.BS. Trần Thị Bình', 2, 'Thạc sĩ', '10 năm kinh nghiệm', 'https://images2.thanhnien.vn/thumb_w/686/528068263637045248/2024/3/7/41498385661961282804899348165590311304931596n-17098051418122006775403-0-286-2048-1822-crop-1709805739243640175866.jpg', 'Thạc sĩ, Bác sĩ Trần Thị Bình là chuyên gia hàng đầu trong lĩnh vực Nhi khoa. Với tình yêu thương trẻ nhỏ và sự kiên nhẫn tuyệt vời, bác sĩ luôn mang đến cảm giác an tâm cho cả bé và phụ huynh. Phương châm của bác sĩ là "Chăm sóc trẻ bằng cả trái tim", ưu tiên các phương pháp điều trị hạn chế kháng sinh.', NULL),
(3, 'BSCKII. Lê Văn Cường', 3, 'Bác sĩ chuyên khoa II', '20 năm kinh nghiệm', 'https://apicms.bachmai.gov.vn/api/media/download/4237d0a4-4839-41c0-97f8-4014f66d3256', 'Bác sĩ Lê Văn Cường là đôi tay vàng trong lĩnh vực Tim mạch với hàng ngàn ca can thiệp thành công. Ông có khả năng chẩn đoán chính xác các bệnh lý phức tạp và luôn cập nhật những công nghệ điều trị tiên tiến nhất thế giới. Sự điềm tĩnh và quyết đoán của ông là chỗ dựa tinh thần vững chắc cho mọi bệnh nhân.', NULL),
(4, 'BS. Phạm Minh Đức', 4, 'Bác sĩ chuyên khoa I', '12 năm kinh nghiệm', 'https://myduchospital.vn/wp-content/uploads/2023/08/B45I0467-683x1024.jpg', 'Đồng hành cùng hàng ngàn mẹ bầu trong hành trình vượt cạn, Bác sĩ Phạm Minh Đức được yêu mến bởi sự nhẹ nhàng và kiến thức chuyên sâu về sản phụ khoa. Bác sĩ luôn chú trọng việc tư vấn tâm lý và dinh dưỡng, giúp các mẹ có một thai kỳ khỏe mạnh và hạnh phúc nhất.', NULL),
(5, 'BS. Hoàng Thu Hà', 5, 'Bác sĩ', '8 năm kinh nghiệm', 'https://suckhoedoisong.qltns.mediacdn.vn/324455921873985536/2024/2/28/1-17091185962321303698672.jpg', 'Bác sĩ Hoàng Thu Hà là chuyên gia trong việc điều trị các bệnh lý da liễu và thẩm mỹ nội khoa. Với con mắt thẩm mỹ tinh tế, bác sĩ giúp bệnh nhân không chỉ khỏi bệnh mà còn lấy lại sự tự tin với làn da khỏe đẹp. Cô thường xuyên tham gia các hội thảo quốc tế để cập nhật xu hướng làm đẹp an toàn.', NULL),
(6, 'ThS.BS. Đỗ Kim Liên', 6, 'Thạc sĩ', '18 năm kinh nghiệm', 'https://phunuvietnam.mediacdn.vn/179072216278405120/2025/2/26/1-bs-cam-binh-medatec-1740572558436508261646.jpg', 'Thạc sĩ Đỗ Kim Liên chuyên sâu về phục hình răng sứ và phẫu thuật hàm mặt. Với sự tỉ mỉ trong từng thao tác, bác sĩ luôn cam kết mang lại nụ cười rạng rỡ và chức năng ăn nhai hoàn hảo nhất cho bệnh nhân. Sự hài lòng của khách hàng là thước đo thành công lớn nhất của cô.', NULL),
(7, 'BS. Phan Thị Ngọc', 7, 'Bác sĩ chuyên khoa I', '10 năm kinh nghiệm', 'https://hthaostudio.com/wp-content/uploads/2022/08/Anh-profile-bac-si-nu-min.jpg', 'Với kinh nghiệm phong phú trong việc điều trị các bệnh lý phức tạp về Tai Mũi Họng, Bác sĩ Ngọc luôn được bệnh nhân tin tưởng nhờ phương pháp chẩn đoán chính xác và sự nhẹ nhàng trong thăm khám. Cô đặc biệt có thế mạnh trong các thủ thuật nội soi hiện đại, giúp giảm thiểu đau đớn cho người bệnh.', NULL),
(8, 'BSCKII. Trần Văn Nam', 8, 'Bác sĩ chuyên khoa II', '22 năm kinh nghiệm', 'https://trungoto.vn/wp-content/uploads/2024/11/Bac-si-Nam-3.png', 'Bác sĩ Trần Văn Nam là chuyên gia đầu ngành về Cơ Xương Khớp với hơn 22 năm cống hiến cho y học. Ông chuyên điều trị các bệnh lý thoái hóa và chấn thương thể thao bằng các phương pháp bảo tồn tiên tiến. Sự tận tâm và quy trình khám chữa bệnh bài bản của ông đã giúp hàng ngàn bệnh nhân tìm lại sự linh hoạt.', NULL),
(9, 'BS. Nguyễn Minh Quân', 1, 'Bác sĩ chuyên khoa I', '14 năm kinh nghiệm', 'https://hthaostudio.com/wp-content/uploads/2022/03/Anh-bac-si-nam-3-min.jpg', 'Bác sĩ Nguyễn Minh Quân có nhiều năm kinh nghiệm trong lĩnh vực Nội khoa tổng quát, đặc biệt chuyên điều trị các bệnh lý huyết áp, tiểu đường và tiêu hóa. Với phong cách làm việc tận tình, bác sĩ luôn đặt sức khỏe bệnh nhân lên hàng đầu.', NULL),
(10, 'ThS.BS. Vũ Thanh Hương', 2, 'Thạc sĩ, Bác sĩ', '9 năm kinh nghiệm', 'https://media.baosonla.org.vn/public/hieupt/2023-03-04/28.jpg', 'Bác sĩ Vũ Thanh Hương là chuyên gia Nhi khoa với nhiều năm kinh nghiệm khám và điều trị bệnh cho trẻ em. Bác sĩ nổi tiếng với sự nhẹ nhàng, chu đáo và luôn tạo cảm giác thoải mái cho các bé khi thăm khám.', NULL),
(11, 'BSCKII. Lý Quốc Hùng', 3, 'Bác sĩ chuyên khoa II', '19 năm kinh nghiệm', 'https://baosonhospital.com/Upload/da-khoa/375x507px-bs-nam-chung.jpg', 'Bác sĩ Lý Quốc Hùng là chuyên gia Tim mạch với nhiều năm nghiên cứu và điều trị các bệnh lý tim phức tạp. Ông từng tham gia nhiều hội nghị y khoa quốc tế và luôn cập nhật công nghệ điều trị mới nhất.', NULL),
(12, 'BS. Đặng Thị Mai', 4, 'Bác sĩ chuyên khoa I', '11 năm kinh nghiệm', 'https://suckhoedoisong.qltns.mediacdn.vn/Images/phamhiep/2019/12/17/DSCF1612.JPG', 'Bác sĩ Đặng Thị Mai có nhiều kinh nghiệm trong chăm sóc sức khỏe sinh sản và sản phụ khoa. Với sự tận tâm và thấu hiểu tâm lý bệnh nhân, bác sĩ luôn đồng hành cùng phụ nữ trong mọi giai đoạn thai kỳ.', NULL),
(13, 'BS. Trần Gia Bảo', 5, 'Bác sĩ', '7 năm kinh nghiệm', 'https://cdnphoto.dantri.com.vn/23bBP9AASKlX2qmsi_FlVDU3Opw=/thumb_w/640/2021/03/26/bac-si-dep-trai-11-1616766737241.jpeg', 'Bác sĩ Trần Gia Bảo chuyên điều trị các bệnh da liễu và tư vấn chăm sóc da chuyên sâu. Bác sĩ có thế mạnh trong điều trị mụn, nám và các bệnh lý về da bằng phương pháp hiện đại.', NULL),
(14, 'ThS.BS. Phạm Khánh Linh', 6, 'Thạc sĩ', '16 năm kinh nghiệm', 'https://cdn2.tuoitre.vn/thumb_w/480/471584752817336320/2024/2/26/z51853079695505b0f9a46599684b61395a82bbeb4cfff-1708911363555497933052.jpg', 'Bác sĩ Phạm Khánh Linh chuyên sâu về Răng Hàm Mặt, đặc biệt trong lĩnh vực chỉnh nha và phục hình thẩm mỹ. Với tay nghề cao và sự tỉ mỉ, bác sĩ luôn mang lại kết quả điều trị tối ưu cho bệnh nhân.', NULL);

INSERT IGNORE INTO appointments (id, patient_id, doctor_id, appointment_date, appointment_time, status) VALUES 
('PK-8241', 1, 1, '2026-05-10', '09:00:00', 'Sắp tới'),
('PK-1290', 1, 2, '2026-05-15', '14:30:00', 'Chờ xác nhận'),
('PK-0552', 1, 3, '2026-04-20', '10:00:00', 'Đã khám'),
('PK-1001', 4, 4, '2026-05-18', '08:30:00', 'Sắp tới'),
('PK-1002', 4, 6, '2026-05-20', '15:00:00', 'Chờ xác nhận'),

('PK-1003', 5, 5, '2026-04-12', '13:30:00', 'Đã khám'),
('PK-1004', 5, 8, '2026-05-22', '09:45:00', 'Sắp tới'),

('PK-1005', 6, 7, '2026-05-19', '10:30:00', 'Chờ xác nhận'),
('PK-1006', 6, 2, '2026-03-25', '16:00:00', 'Đã khám'),

('PK-1007', 7, 10, '2026-05-25', '11:00:00', 'Sắp tới'),
('PK-1008', 7, 11, '2026-04-08', '14:00:00', 'Đã khám'),

('PK-1009', 8, 12, '2026-05-21', '09:15:00', 'Chờ xác nhận'),
('PK-1010', 8, 9, '2026-02-15', '08:00:00', 'Đã khám'),

('PK-1011', 9, 13, '2026-05-30', '15:30:00', 'Sắp tới'),
('PK-1012', 9, 1, '2026-04-05', '10:15:00', 'Đã khám'),

('PK-1013', 10, 14, '2026-05-28', '13:00:00', 'Chờ xác nhận'),
('PK-1014', 10, 4, '2026-03-18', '09:00:00', 'Đã hủy'),

('PK-1015', 11, 3, '2026-05-26', '16:30:00', 'Sắp tới'),
('PK-1016', 11, 6, '2026-01-22', '11:30:00', 'Đã khám'),

('PK-1017', 12, 8, '2026-05-24', '08:45:00', 'Chờ xác nhận'),
('PK-1018', 12, 5, '2026-04-10', '14:15:00', 'Đã khám');

INSERT IGNORE INTO medical_records (id, patient_id, doctor_id, appointment_id, examination_date, symptoms, diagnosis, prescription, notes) VALUES 
(1, 1, 3, 'PK-0552', '2026-04-20 10:30:00', 'Đau nhói vùng ngực trái, khó thở khi vận động mạnh', 'Thiếu máu cơ tim cục bộ', 'Aspirin 81mg, Atorvastatin 20mg', 'Hạn chế vận động mạnh, theo dõi huyết áp hàng ngày'),
(2, 5, 5, 'PK-1003', '2026-04-12 14:00:00', 'Nổi mẩn đỏ rải rác toàn thân, ngứa nhiều về đêm', 'Viêm da cơ địa dị ứng', 'Thuốc bôi Fucicort, Thuốc uống Loratadin 10mg', 'Tránh tiếp xúc hóa chất, sử dụng sữa tắm dịu nhẹ'),
(3, 6, 2, 'PK-1006', '2026-03-25 16:30:00', 'Trẻ sốt cao 39 độ, ho đờm, sổ mũi trong 3 ngày', 'Viêm phế quản cấp', 'Paracetamol 250mg, Siro ho Prospan', 'Uống nhiều nước ấm, theo dõi nhiệt độ mỗi 4 tiếng'),
(4, 7, 11, 'PK-1008', '2026-04-08 14:30:00', 'Hồi hộp, tim đập nhanh, chóng mặt khi đứng lên ngồi xuống', 'Rối loạn nhịp tim', 'Concor 2.5mg', 'Tránh căng thẳng, ngủ đủ giấc, tái khám sau 1 tháng'),
(5, 8, 9, 'PK-1010', '2026-02-15 08:30:00', 'Đau âm ỉ vùng thượng vị, ợ chua, buồn nôn', 'Trào ngược dạ dày thực quản (GERD)', 'Nexium 40mg, Gaviscon', 'Không ăn no trước khi ngủ, kiêng đồ chua cay'),
(6, 9, 1, 'PK-1012', '2026-04-05 10:45:00', 'Ho khan kéo dài, mệt mỏi, sụt cân nhẹ', 'Viêm họng mạn tính', 'Thuốc súc họng Betadine, Vitamin C 500mg', 'Giữ ấm cổ, hạn chế nói to kéo dài'),
(7, 11, 6, 'PK-1016', '2026-01-22 12:00:00', 'Đau buốt răng hàm dưới bên phải, sưng nướu nhẹ', 'Sâu răng hàm, viêm tủy giai đoạn đầu', 'Amoxicillin 500mg, Panadol 500mg', 'Vệ sinh răng miệng kỹ, lên lịch lấy tủy tuần sau'),
(8, 12, 5, 'PK-1018', '2026-04-10 14:45:00', 'Mụn bọc sưng đỏ vùng má và cằm, da đổ nhiều dầu', 'Mụn trứng cá dạng nang viêm', 'Isotretinoin 10mg, Gel chấm mụn Epiduo', 'Kiêng sữa bò, đường, chống nắng kỹ');

-- =====================================================================
-- BỔ SUNG THÊM DỮ LIỆU ĐỂ HỆ THỐNG PHONG PHÚ HƠN
-- =====================================================================

-- 2. Thêm 6 User mới (3 Bệnh nhân, 3 Bác sĩ) (ID từ 26 đến 31)
INSERT IGNORE INTO users (id, username, password, full_name, email, phone, role) VALUES 
(26, 'nguyenvanphuc', 'password123', 'Nguyễn Văn Phúc', 'phuc.nguyen@example.com', '0981112233', 'PATIENT'),
(27, 'lethiminh', 'password123', 'Lê Thị Minh', 'minh.le@example.com', '0982223344', 'PATIENT'),
(28, 'tranvanhoang', 'password123', 'Trần Văn Hoàng', 'hoang.tran@example.com', '0983334455', 'PATIENT'),
(29, 'phamthanhhai', 'password123', 'Phạm Thanh Hải', 'hai.pham@medical.com', '0901231231', 'DOCTOR'),
(30, 'vuongthuykieu', 'password123', 'Vương Thúy Kiều', 'kieu.vuong@medical.com', '0902342342', 'DOCTOR'),
(31, 'nguyenhoangbach', 'password123', 'Nguyễn Hoàng Bách', 'bach.nguyen@medical.com', '0903453453', 'DOCTOR');

-- 3. Thêm 3 Bác sĩ mới vào bảng doctors (ID 15, 16, 17) - Gắn vào các chuyên khoa có sẵn (1: Nội tổng quát, 3: Tim mạch)
INSERT IGNORE INTO doctors (id, name, specialty_id, degree, experience, image_url, description, user_id) VALUES 
(15, 'BSCKI. Phạm Thanh Hải', 1, 'Bác sĩ chuyên khoa I', '12 năm kinh nghiệm', 'https://images2.thanhnien.vn/528068263637045248/2023/11/21/base64-17005619401301695251211.jpeg', 'Bác sĩ Hải có nhiều kinh nghiệm trong điều trị các bệnh lý nội khoa, chăm sóc sức khỏe toàn diện cho người trưởng thành.', 29),
(16, 'ThS.BS. Vương Thúy Kiều', 1, 'Thạc sĩ', '10 năm kinh nghiệm', 'https://vanphuc.com/Data/Sites/1/News/2607/bs_cki_cao-thi-nu.jpg', 'Chuyên gia nội khoa, đặc biệt mát tay trong việc tầm soát, phát hiện sớm và điều trị các bệnh lý tiêu hóa, dạ dày.', 30),
(17, 'PGS.TS. Nguyễn Hoàng Bách', 3, 'Phó Giáo sư, Tiến sĩ', '25 năm kinh nghiệm', 'https://oreli.vn/wp-content/uploads/2026/02/bs-nguyen-nam-chung-chuyen-gia-implant-oreli.jpg', 'Chuyên gia hàng đầu về Tim mạch. Điều trị thành công hàng ngàn ca cao huyết áp, suy tim và rối loạn nhịp tim.', 31);

-- 4. Thêm 5 Lịch khám mới cho các bác sĩ và bệnh nhân vừa tạo
INSERT IGNORE INTO appointments (id, patient_id, doctor_id, appointment_date, appointment_time, status) VALUES 
('PK-1019', 26, 15, '2026-06-01', '08:30:00', 'Sắp tới'),
('PK-1020', 27, 16, '2026-05-15', '09:00:00', 'Đã khám'),
('PK-1021', 28, 17, '2026-05-10', '14:00:00', 'Đã khám'),
('PK-1022', 1, 16, '2026-06-05', '10:30:00', 'Chờ xác nhận'),
('PK-1023', 4, 15, '2026-05-12', '15:30:00', 'Đã hủy');

-- 5. Thêm 2 Hồ sơ bệnh án cho 2 lịch khám "Đã khám" ở trên
INSERT IGNORE INTO medical_records (id, patient_id, doctor_id, appointment_id, examination_date, symptoms, diagnosis, prescription, notes) VALUES 
(9, 27, 16, 'PK-1020', '2026-05-15 09:30:00', 'Đau thắt vùng bụng trên, buồn nôn sau khi ăn đồ cay', 'Viêm loét dạ dày tá tràng', 'Esomeprazole 40mg, Phosphalugel', 'Kiêng ăn cay nóng, không thức khuya, tái khám nội soi sau 2 tuần'),
(10, 28, 17, 'PK-1021', '2026-05-10 14:45:00', 'Đau đầu, chóng mặt khi đứng lên, đo huyết áp 160/100', 'Cao huyết áp vô căn', 'Amlodipine 5mg', 'Uống thuốc đúng giờ, đo huyết áp hằng ngày, ăn nhạt hơn');

-- =====================================================================
-- BỔ SUNG THÊM DỮ LIỆU ĐỢT 2 (KHÔNG THÊM CHUYÊN KHOA)
-- =====================================================================

-- Thêm 4 User mới (2 Bệnh nhân, 2 Bác sĩ) (ID từ 32 đến 35)
INSERT IGNORE INTO users (id, username, password, full_name, email, phone, role) VALUES 
(32, 'nguyenhoangyen', 'password123', 'Nguyễn Hoàng Yến', 'yen.nguyen@example.com', '0984445566', 'PATIENT'),
(33, 'phamvanvu', 'password123', 'Phạm Văn Vũ', 'vu.pham@example.com', '0985556677', 'PATIENT'),
(34, 'leminhnguyet', 'password123', 'Lê Minh Nguyệt', 'nguyet.le@medical.com', '0904564564', 'DOCTOR'),
(35, 'tranthanhson', 'password123', 'Trần Thanh Sơn', 'son.tran@medical.com', '0905675675', 'DOCTOR');

-- Thêm 2 Bác sĩ mới vào bảng doctors (ID 18, 19) - Gắn vào Da liễu (5) và Sản phụ khoa (4)
INSERT IGNORE INTO doctors (id, name, specialty_id, degree, experience, image_url, description, user_id) VALUES 
(18, 'BSCKII. Lê Minh Nguyệt', 5, 'Bác sĩ chuyên khoa II', '15 năm kinh nghiệm', 'https://static-images.vnncdn.net/vps_images_publish/000001/000003/2025/10/29/nu-bac-si-mo-ra-co-hoi-song-cho-benh-nhi-mac-benh-hiem-1891.jpg?width=1200&s=uQJM_Nt7wAv93gBafQlzxw', 'Bác sĩ chuyên khoa sâu về Da liễu, có kinh nghiệm điều trị các bệnh lý da liễu phức tạp và chăm sóc da thẩm mỹ.', 34),
(19, 'ThS.BS. Trần Thanh Sơn', 4, 'Thạc sĩ', '12 năm kinh nghiệm', 'https://nhakhoaviethan.vn/wp-content/uploads/2024/05/bac-si-Tinh-1024x1024.jpg', 'Chuyên gia về Sản phụ khoa, đồng hành cùng nhiều sản phụ trong quá trình mang thai và sinh nở an toàn.', 35);

-- Thêm 4 Lịch khám mới 
INSERT IGNORE INTO appointments (id, patient_id, doctor_id, appointment_date, appointment_time, status) VALUES 
('PK-1024', 32, 18, '2026-06-10', '09:00:00', 'Sắp tới'),
('PK-1025', 33, 19, '2026-05-18', '10:00:00', 'Đã khám'),
('PK-1026', 1, 18, '2026-05-01', '14:30:00', 'Đã khám'),
('PK-1027', 2, 19, '2026-06-20', '16:00:00', 'Chờ xác nhận');

-- Thêm 2 Hồ sơ bệnh án cho các lịch "Đã khám"
INSERT IGNORE INTO medical_records (id, patient_id, doctor_id, appointment_id, examination_date, symptoms, diagnosis, prescription, notes) VALUES 
(11, 33, 19, 'PK-1025', '2026-05-18 10:45:00', 'Thai phụ 24 tuần, khám thai định kỳ, không đau bụng, không ra huyết', 'Thai 24 tuần phát triển bình thường', 'Vitamin tổng hợp Elevit, Canxi', 'Tiếp tục theo dõi thai kỳ, siêu âm 4D vào tuần thứ 28'),
(12, 1, 18, 'PK-1026', '2026-05-01 15:00:00', 'Nổi ban đỏ có vảy trắng ở khuỷu tay và đầu gối, ngứa ít', 'Vảy nến thể mảng', 'Daivobet bôi ngày 1 lần, Dưỡng ẩm Cetaphil', 'Giữ ẩm da thường xuyên, tránh căng thẳng thần kinh');
