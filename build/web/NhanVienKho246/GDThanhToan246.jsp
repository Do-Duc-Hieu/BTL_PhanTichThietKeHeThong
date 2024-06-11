<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="model.*, dao.*" %>
<%@ page import="java.util.List" %>
<%
    NhaCungCap246 nhaCungCap = (NhaCungCap246) session.getAttribute("nhaCungCap");
    NhanVienKho246 nhanVienKho = (NhanVienKho246) session.getAttribute("nhanVienKho");
    ArrayList<NguyenLieu246> nguyenLieuTrongDon = (ArrayList<NguyenLieu246>) session.getAttribute("nguyenLieuTrongDon");
    HoaDon246 hoaDon = (HoaDon246) session.getAttribute("hoaDon");
    if (nhaCungCap == null || nhanVienKho == null || hoaDon ==null) {
        response.sendRedirect("TrangLoi.jsp");
    }
    hoaDon.setNgayTao();
    float tongTien = 0;
    for(NguyenLieu246 nguyenLieu : nguyenLieuTrongDon){
        tongTien += nguyenLieu.getSl()*nguyenLieu.getGia();
    }
    
    hoaDon.setTongTien(tongTien);
    session.setAttribute("hoaDon", hoaDon);
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>GD thanh toán 246</title>
</head>
<body>
    <h1>Nhập nguyên liệu: xác nhận hóa đơn</h1>
    <h1><%= nhanVienKho.getTen() %></h1>
    <p>Ngày tạo: <%= hoaDon.getNgayTao() %></p>
    <h2>Nhà cung cấp: <%= nhaCungCap.getTen() %></h2>
    
    <h3>Danh sách nhập:</h3>
    <table border="1">
        <thead>
            <tr>
                <th>id</th>
                <th>Tên nguyên liệu</th>
                <th>Số lượng nhập</th>
                <th>Giá</th>
                <th>Tiền</th>
            </tr>
        </thead>
        <tbody>
            <% for (NguyenLieu246 nguyenLieu : nguyenLieuTrongDon) { %>
                <tr>
                    <td><%= nguyenLieu.getId() %></td>
                    <td><%= nguyenLieu.getTen() %></td>
                    <td><%= nguyenLieu.getSl()%></td>
                    <td><%= nguyenLieu.getGia()%></td>
                    <td><%= nguyenLieu.getSl()*nguyenLieu.getGia() %></td>
                </tr>
            </c:forEach><% } %>
        </tbody>
    </table>
    
    <p>Tổng tiền: <%= hoaDon.getTongTien() %></p>
    <form action="GDHoaDon246.jsp" method="post">
        <button type="submit">Xác nhận</button>
    </form>
</body>
</html>
