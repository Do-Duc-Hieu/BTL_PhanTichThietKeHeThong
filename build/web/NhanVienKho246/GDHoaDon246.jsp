<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="model.*, dao.*" %>
<%@ page import="java.util.List" %>
<%
    NhaCungCap246 nhaCungCap = (NhaCungCap246) session.getAttribute("nhaCungCap");
    NhanVienKho246 nhanVienKho = (NhanVienKho246) session.getAttribute("nhanVienKho");
    ArrayList<NguyenLieu246> nguyenLieuTrongDon = (ArrayList<NguyenLieu246>) session.getAttribute("nguyenLieuTrongDon");
    HoaDon246 hoaDon = (HoaDon246) session.getAttribute("hoaDon");
    ThongTinMua246DAO thongTinMua246DAO = new ThongTinMua246DAO();
    HoaDon246DAO hoaDon246DAO = new HoaDon246DAO();
    hoaDon246DAO.insert(hoaDon);
    for(NguyenLieu246 nguyenLieu : nguyenLieuTrongDon){
        thongTinMua246DAO.insert(nguyenLieu.getId(), hoaDon246DAO.select(), nguyenLieu.getSl());
    }

 //  hoaDon246DAO.xuatHoaDon(hoaDon, nguyenLieuTrongDon);

    // Chuyển hướng về trang GDChinhNhanVienKho246.jsp sau khi xử lý xong
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>GD hóa đơn 246</title>
</head>
<body>
    <h1>Nhập nguyên liệu: hiển thị hóa đơn</h1>
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
    <form action="GDChinhNhanVienKho246.jsp" method="post">
        <button type="submit">Ok</button>
    </form>
</body>
</html>