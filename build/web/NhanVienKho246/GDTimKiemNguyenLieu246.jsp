<%@page import="java.sql.Date"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="model.*, dao.*" %>
<%@ page import="java.util.List" %>

<%
    NhanVienKho246 nhanVienKho = (NhanVienKho246) session.getAttribute("nhanVienKho");
    
    // Xử lí để lấy mã nhà cung cấp để cho nhà cung cấp vào session
    Integer maNhaCungCap = null;
    String idParam = request.getParameter("id");

    if (idParam != null) {
        maNhaCungCap = Integer.parseInt(idParam);
    }

    NhaCungCap246DAO nhaCungCap246DAO = new NhaCungCap246DAO();
    NhaCungCap246 nhaCungCap = (NhaCungCap246) session.getAttribute("nhaCungCap");

    if (maNhaCungCap != null) {
        nhaCungCap = nhaCungCap246DAO.getNhaCungCapByMa(maNhaCungCap);
        session.setAttribute("nhaCungCap", nhaCungCap);
    }
    
    //Tạo danh sách nguyên liệu để lưu những nguyên liệu cùng tên với key
    List<NguyenLieu246> danhSachNguyenLieu = new ArrayList<NguyenLieu246>(); 
    String tenNguyenLieu = request.getParameter("ten");
    
    if (tenNguyenLieu != null && !tenNguyenLieu.isEmpty()) {
        session.setAttribute("tenNguyenLieu", tenNguyenLieu);
    }
    
    //Xử lí phần danh sách nguyên liệu đã chọn   
    HoaDon246 hoaDon = (HoaDon246) session.getAttribute("hoaDon");
    
    if(hoaDon == null){ // lần đầu vào trang khởi tạo một hóa đơn cho vào session
        hoaDon = new HoaDon246();
        hoaDon.setNhaCungCap(nhaCungCap);
        hoaDon.setNhanVienKho(nhanVienKho);
        session.setAttribute("hoaDon", hoaDon);
    }
    
      //Tạo mảng để lưu danh sách nguyên liệu trong hóa đơn
    ArrayList<NguyenLieu246> nguyenLieuTrongDon = (ArrayList<NguyenLieu246>) session.getAttribute("nguyenLieuTrongDon");
    if(nguyenLieuTrongDon==null){
        nguyenLieuTrongDon = new ArrayList<>();
        session.setAttribute("nguyenLieuTrongDon", nguyenLieuTrongDon);
    }
    
    if (nhaCungCap != null || nhanVienKho != null ) {
        NguyenLieu246DAO nguyenLieu246DAO = new NguyenLieu246DAO();
        if (tenNguyenLieu != null && !tenNguyenLieu.isEmpty()) {
            // Thực hiện tìm kiếm món ăn dựa trên tên
            danhSachNguyenLieu = nguyenLieu246DAO.timKiemTheoTen(tenNguyenLieu); // Thay thế bằng cách tìm kiếm thực tế
        }
        
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>GD tìm kiếm nguyên liệu 246</title>
</head>
<body>
    <h1>Nhập nguyên liệu: tìm kiếm nguyên liệu</h1>
    <h1><%= nhanVienKho.getTen() %></h1>
    <h2>Nhà cung cấp: <%= nhaCungCap.getTen()%></h2>
    
    <form action="GDTimKiemNguyenLieu246.jsp" method="get">
        <label for="ten">Nhập từ khóa:</label>
        <input type="text" id="ten" name="ten">
        <input type="submit" value="Tìm kiếm">
    </form>
   
    <ul>
        <% for (NguyenLieu246 nguyenLieu : danhSachNguyenLieu) { %>
        <li><a href="GDThongTinNguyenLieu246.jsp?id=<%= nguyenLieu.getId() %>"><%= nguyenLieu.getTen() %></a></li>
        <% } %>
    </ul>
    
   <h2>Danh sách đã chọn:</h2>
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
    
    <form action="GDThanhToan246.jsp">
        <button type="submit">Thanh toán</button>
    </form>
</body>
</html>
<%
    } else {
        // Nếu không tồn tại thông tin KhachHang, có thể xử lý hoặc chuyển hướng tới trang lỗi
        response.sendRedirect("TrangLoi.jsp");
    }
%>
