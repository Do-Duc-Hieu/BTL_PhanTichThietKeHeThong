CREATE database RestMan;
use RestMan;
CREATE TABLE ThanhVien246 (
    id INT auto_increment PRIMARY KEY,
    ten VARCHAR(255),
    taiKhoan VARCHAR(255),
    matKhau VARCHAR(255),
    ngaySinh DATE,
    diaChi VARCHAR(255),
    sdt VARCHAR(15),
    email VARCHAR(255),
    viTri VARCHAR(255)
);

CREATE TABLE KhachHang246 (
    id INT PRIMARY KEY,
    -- Thêm các trường riêng cho KhachHang246 nếu có
    FOREIGN KEY (id) REFERENCES ThanhVien246(id)
);

CREATE TABLE NhanVienKho246 (
    id INT PRIMARY KEY,
    -- Thêm các trường riêng cho NhanVienKho246 nếu có
    FOREIGN KEY (id) REFERENCES ThanhVien246(id)
);

CREATE TABLE MonAn246 (
    id INT auto_increment PRIMARY KEY,
    ten VARCHAR(255),
    gia FLOAT,
    thanhPhan VARCHAR(255),
    moTa TEXT
);

CREATE TABLE NguyenLieu246 (
    id INT auto_increment PRIMARY KEY,
    ten VARCHAR(255),
    gia FLOAT,
    sl INT
);

CREATE TABLE NhaCungCap246 (
    id INT auto_increment PRIMARY KEY,
    ten VARCHAR(255),
    diaChi VARCHAR(255),
    sdt VARCHAR(15),
    email VARCHAR(255)
);

CREATE TABLE HoaDon246 (
    id int auto_increment PRIMARY KEY,
    ngayTao DATE,
    ghiChu TEXT,
    tongTien float,
    id_nhaCungCap INT,
    id_nhanVienKho INT,
    FOREIGN KEY (id_nhaCungCap) REFERENCES NhaCungCap246(id),
    FOREIGN KEY (id_nhanVienKho) REFERENCES NhanVienKho246(id)
);

CREATE TABLE ThongTinMua246 (
    id INT auto_increment PRIMARY KEY,
    id_nguyenLieu INT,
    id_hoaDon INT,
    sl INT,
    FOREIGN KEY (id_nguyenLieu) REFERENCES NguyenLieu246(id),
    FOREIGN KEY (id_hoaDon) REFERENCES HoaDon246(id)
);
