<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,dao.*,model.*, java.util.List"%>
<%
    NhanVienKho246 nhanVienKho = (NhanVienKho246) session.getAttribute("nhanVienKho");
    
    List<NhaCungCap246> danhSachNhaCungCap = new ArrayList<NhaCungCap246>(); // Thay thế bằng danh sách thực tế
    String tenNhaCungCap = request.getParameter("ten");

    if (tenNhaCungCap != null && !tenNhaCungCap.isEmpty()) {
        session.setAttribute("tenNhaCungCap", tenNhaCungCap);
    } else {
        // Nếu tenMonAn không tồn tại trong session, kiểm tra xem có trong request parameter không.
        String tenNhaCungCapFromSession = (String) session.getAttribute("tenNhaCungCap");
        if (tenNhaCungCapFromSession != null) {
        
            tenNhaCungCap = tenNhaCungCapFromSession;
        }
    }
    
    if (nhanVienKho != null) {
        if (tenNhaCungCap != null && !tenNhaCungCap.isEmpty()) {
            // Thực hiện tìm kiếm món ăn dựa trên tên
            NhaCungCap246DAO nhaCungCap246DAO = new NhaCungCap246DAO();
            danhSachNhaCungCap = nhaCungCap246DAO.timKiemTheoTen(tenNhaCungCap); // Thay thế bằng cách tìm kiếm thực tế
        }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>GD tìm kiếm nhà cung cấp 246</title>
</head>
<body>
    <h1>Nhập nguyên liệu: tìm kiếm nhà cung cấp</h1>
    <h2><%= nhanVienKho.getTen() %></h2>
    <form action="GDTimKiemNhaCungCap246.jsp" method="post">
        <label for="ten">Nhập từ khóa:</label>
        <input type="text" id="ten" name="ten">
        <button type="submit">Tìm kiếm</button>
    </form>
    
    <ul>
        <% for (NhaCungCap246 nhaCungCap : danhSachNhaCungCap) { %>
        <li><a href="GDTimKiemNguyenLieu246.jsp?id=<%= nhaCungCap.getId() %>"><%= nhaCungCap.getTen() %></a></li>
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
