INSERT INTO ThanhVien246 (ten, taiKhoan, matKhau, ngaySinh, diaChi, sdt, email, viTri)
VALUES
  ('Nguyen Van A', 'user1', 'password1', '1990-01-01', '123 Main St', '1234567890', 'email1@example.com', 'KhachHang'),
  ('Tran Thi B', 'user2', 'password2', '1995-02-15', '456 Elm St', '9876543210', 'email2@example.com', 'NhanVienKho'),
  ('Le Van C', 'user3', 'password3', '1987-08-30', '789 Oak St', '5556667777', 'email3@example.com', 'KhachHang'),
  ('Pham Thi D', 'user4', 'password4', '1992-12-20', '101 Pine St', '1112223333', 'email4@example.com', 'KhachHang'),
  ('Hoang Van E', 'user5', 'password5', '1985-05-05', '222 Cedar St', '4447779999', 'email5@example.com', 'NhanVienKho');

INSERT INTO KhachHang246 (id)
VALUES
  (1),
  (3),
  (4);
INSERT INTO NhanVienKho246 (id)
VALUES
  (2),
  (5);
INSERT INTO MonAn246 (ten, gia, thanhPhan, moTa)
VALUES
  ('Món ăn 1', 10.99, 'Thành phần 1', 'Mô tả món ăn 1'),
  ('Món ăn 2', 8.99, 'Thành phần 2', 'Mô tả món ăn 2'),
  ('Món ăn 3', 12.99, 'Thành phần 3', 'Mô tả món ăn 3'),
  ('Món ăn 4', 7.99, 'Thành phần 4', 'Mô tả món ăn 4'),
  ('Món ăn 5', 15.99, 'Thành phần 5', 'Mô tả món ăn 5');
INSERT INTO NguyenLieu246 (ten, gia, sl)
VALUES
  ('Nguyên liệu 1', 5.99, 100),
  ('Nguyên liệu 2', 4.99, 150),
  ('Nguyên liệu 3', 3.99, 200),
  ('Nguyên liệu 4', 6.99, 120),
  ('Nguyên liệu 5', 7.99, 80);
INSERT INTO NhaCungCap246 (ten, diaChi, sdt, email)
VALUES
  ('Nhà cung cấp 1', 'Địa chỉ 1', '1111111111', 'email1@example.com'),
  ('Nhà cung cấp 2', 'Địa chỉ 2', '2222222222', 'email2@example.com'),
  ('Nhà cung cấp 3', 'Địa chỉ 3', '3333333333', 'email3@example.com'),
  ('Nhà cung cấp 4', 'Địa chỉ 4', '4444444444', 'email4@example.com'),
  ('Nhà cung cấp 5', 'Địa chỉ 5', '5555555555', 'email5@example.com');
