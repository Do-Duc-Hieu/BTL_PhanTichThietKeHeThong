<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Đăng nhập 246</title>
</head>
<body>
    <h1>Đăng nhập</h1>
    <form action="KiemTraDangNhap246.jsp" method="post">
        <label for="taiKhoan">Tài khoản:</label>
        <input type="text" id="taiKhoan" name="taiKhoan" required><br><br>
        
        <label for="matKhau">Mật khẩu:</label>
        <input type="password" id="matKhau" name="matKhau" required><br><br>
        
        <button type="submit">Đăng nhập</button>
    </form>
</body>
</html>



