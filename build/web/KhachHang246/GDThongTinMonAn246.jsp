<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="model.MonAn246, dao.*, model.KhachHang246" %>
<%
    // Lấy thông tin món ăn từ tham số trên URL
    Integer maMonAn = Integer.parseInt(request.getParameter("id"));
    MonAn246DAO monAn246DAO = new MonAn246DAO();
    MonAn246 monAn = monAn246DAO.getMonAnByMa(maMonAn); // Thay thế bằng cách lấy thông tin từ mã món ăn

    // Lấy thông tin KhachHang từ phiên
    KhachHang246 khachHang = (KhachHang246) session.getAttribute("khachHang");

    if (monAn != null) {
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thong tin mon an</title>
</head>
<body>
    <h1>Tìm kiếm thông tin món ăn: thông tin món ăn</h1>
    <h1><%= khachHang.getTen() %></h1>
    <h2>Thông tin món ăn</h2>
    <p>ID: <%= monAn.getId() %></p>
    <p>Tên: <%= monAn.getTen() %></p>
    <p>Giá: <%= monAn.getGia() %></p>
    <p>Thành phần: <%= monAn.getThanhPhan() %></p>
    <p>Mô tả: <%= monAn.getMoTa() %></p>
    <hr>
    
    <form action="GDTimKiemMonAn246.jsp">
        <button type="submit">OK</button>
    </form>
</body>
</html>
<%
    } else {
        // Xử lý trường hợp không tìm thấy món ăn
        response.sendRedirect("TrangLoi.jsp");
    }
%>
