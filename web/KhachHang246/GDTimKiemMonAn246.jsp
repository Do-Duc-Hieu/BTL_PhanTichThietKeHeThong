<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,dao.*,model.*, java.util.List"%>
<%
    // Lấy thông tin KhachHang từ thuộc tính ẩn
    KhachHang246 khachHang = (KhachHang246) session.getAttribute("khachHang");

    List<MonAn246> danhSachMonAn = new ArrayList<MonAn246>(); // Thay thế bằng danh sách thực tế

    String tenMonAn = request.getParameter("ten");

    if (tenMonAn != null && !tenMonAn.isEmpty()) {
        // Nếu người dùng đã nhập và gửi form tìm kiếm, thì đặt giá trị tenMonAn vào session.
        session.setAttribute("tenMonAn", tenMonAn);
    } else {
        // Nếu tenMonAn không tồn tại trong session, kiểm tra xem có trong request parameter không.
        String tenMonAnFromSession = (String) session.getAttribute("tenMonAn");
        if (tenMonAnFromSession != null) {
            // Sử dụng giá trị tenMonAn lấy từ session.
            tenMonAn = tenMonAnFromSession;
        }
    }

    if (khachHang != null) {
        if (tenMonAn != null && !tenMonAn.isEmpty()) {
            // Thực hiện tìm kiếm món ăn dựa trên tên
            MonAn246DAO monAn246DAO = new MonAn246DAO();
            danhSachMonAn = monAn246DAO.timKiemTheoTen(tenMonAn); // Thay thế bằng cách tìm kiếm thực tế
        }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>GD tìm kiếm món ăn 246</title>
</head>
<body>
    <h1>Tìm kiếm thông tin món ăn: tìm kiếm</h1>
    <h1><%= khachHang.getTen() %></h1>
    <form action="GDTimKiemMonAn246.jsp" method="post">
        <label for="ten">Nhập từ khóa:</label>
        <input type="text" id="ten" name="ten">
        <button type="submit">Tìm kiếm</button>
    </form>
    
    <ul>
        <% for (MonAn246 monAn : danhSachMonAn) { %>
        <li><a href="GDThongTinMonAn246.jsp?id=<%= monAn.getId() %>"><%= monAn.getTen() %></a></li>
        <% } %>
    </ul>
</body>
</html>
<%
    } else {
        // Nếu không tồn tại thông tin KhachHang, có thể xử lý hoặc chuyển hướng tới trang lỗi
        response.sendRedirect("TrangLoi.jsp");
    }
%>
