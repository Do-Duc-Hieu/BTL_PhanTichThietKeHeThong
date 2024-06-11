<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,dao.*,model.*, java.util.List"%>

<%  
    NhaCungCap246 nhaCungCap = (NhaCungCap246) session.getAttribute("nhaCungCap");
    NhanVienKho246 nhanVienKho = (NhanVienKho246) session.getAttribute("nhanVienKho");
    ArrayList<NguyenLieu246> nguyenLieuTrongDon = (ArrayList<NguyenLieu246>) session.getAttribute("nguyenLieuTrongDon");
    
    //Xử lí với mã nguyên liệu trong url
    Integer maNguyenLieu = null;
    String idParam = request.getParameter("id");

    if (idParam != null) {
        maNguyenLieu = Integer.parseInt(idParam);
    }

    NguyenLieu246DAO nguyenLieu246DAO = new NguyenLieu246DAO();
    NguyenLieu246 nguyenLieu = (NguyenLieu246) session.getAttribute("nguyenLieu");

    if (maNguyenLieu != null) {
        nguyenLieu = nguyenLieu246DAO.getById(maNguyenLieu);
        session.setAttribute("nguyenLieu", nguyenLieu);
    }
    
    
    
    String soLuongNhapStr = request.getParameter("soLuongNhap");
    
    if (soLuongNhapStr != null) {
        int soLuongNhap = Integer.parseInt(soLuongNhapStr);
        nguyenLieu.setSl(soLuongNhap);
        nguyenLieuTrongDon.add(nguyenLieu);
        session.setAttribute("nguyenLieuTrongDon", nguyenLieuTrongDon);
        response.sendRedirect("GDTimKiemNguyenLieu246.jsp");
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thông tin nguyên liệu 246</title>
</head>
<body>
    <h1>Nhập nguyên liệu: thông tin nguyên liệu</h1>
    <h1><%= nhanVienKho.getTen() %></h1>
    <h2>Nhà cung cấp: <%= nhaCungCap.getTen()%></h2>
    <p>ID: <%= nguyenLieu.getId() %></p>
    <form action="GDThongTinNguyenLieu246.jsp" method="post">
        <p>Tên: <%= nguyenLieu.getTen() %></p>
        <p>Giá: <%= nguyenLieu.getGia() %></p>
        <label for="soLuongNhap">Số lượng nhập:</label>
        <input type="number" id="soLuongNhap" name="soLuongNhap" required><br><br>
        <button type="submit">Thêm nguyên liệu</button>
    </form>
</body>
</html>
