<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="model.KhachHang246" %>
<%
    // Lấy thông tin KhachHang từ thuộc tính ẩn
    KhachHang246 khachHang = (KhachHang246) session.getAttribute("khachHang");

    if (khachHang != null) {
        session.setAttribute("khachHang", khachHang);
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>GD chính khách hàng 246</title>
</head>
<body>
    <h1> <%= khachHang.getTen() %></h1>
    <form action="GDTimKiemMonAn246.jsp">
        <button type="submit">Tìm kiếm thông tin món ăn</button>
    </form>
</body>
</html>
<%
    } else {
        // Nếu không tồn tại thông tin KhachHang, có thể xử lý hoặc chuyển hướng tới trang lỗi
        response.sendRedirect("TrangLoi.jsp");
    }
%>
