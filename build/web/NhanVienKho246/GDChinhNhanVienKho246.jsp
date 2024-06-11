<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="model.*" %>

<%
    NhanVienKho246 nhanVienKho = (NhanVienKho246) session.getAttribute("nhanVienKho");
       if (nhanVienKho != null) {
        session.setAttribute("nhanVienKho", nhanVienKho);
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>GD chính nhân viên kho 246</title>
</head>
<body>
    <h1><%= nhanVienKho.getTen() %></h1>
    
    <form action="GDTimKiemNhaCungCap246.jsp">
        <input type="submit" value="Nhập nguyên liệu">
    </form>
</body>
</html>
<%
    } else {
        // Nếu không tồn tại thông tin KhachHang, có thể xử lý hoặc chuyển hướng tới trang lỗi
        response.sendRedirect("TrangLoi.jsp");
    }
%>
