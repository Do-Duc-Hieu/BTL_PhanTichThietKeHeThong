package dao;
 
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import model.*;
 
public class ThanhVien246DAO extends DAO{
 
    public ThanhVien246DAO() {
        super();
        // TODO Auto-generated constructor stub
    }
     
    public boolean kiemTraDangNhap(String taiKhoan, String matKhau) {
        Connection conn = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        boolean ketQua = false;

        try {
            String query = "SELECT viTri FROM ThanhVien246 WHERE taiKhoan = ? AND matKhau = ?";
            preparedStatement = con.prepareStatement(query);
            preparedStatement.setString(1, taiKhoan);
            preparedStatement.setString(2, matKhau);
            resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                ketQua = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return ketQua;
    }

    
    
    private static final String SELECT_THANHVIEN_BY_TAIKHOAN =
        "SELECT id, ten, taiKhoan, matKhau, ngaySinh, diaChi, sdt, email, viTri FROM ThanhVien246 WHERE taiKhoan = ? AND matKhau = ?";

    public ThanhVien246 getThanhVienByTaiKhoan(String taiKhoan, String matKhau) {
        ThanhVien246 thanhVien = null;

        try (PreparedStatement preparedStatement = con.prepareStatement(SELECT_THANHVIEN_BY_TAIKHOAN)) {
            preparedStatement.setString(1, taiKhoan);
            preparedStatement.setString(2, matKhau);

            ResultSet result = preparedStatement.executeQuery();

            if (result.next()) {
                int id = result.getInt("id");
                String ten = result.getString("ten");
                Date ngaySinh = result.getDate("ngaySinh");
                String diaChi = result.getString("diaChi");
                String sdt = result.getString("sdt");
                String email = result.getString("email");
                String viTri = result.getString("viTri");

                thanhVien = new ThanhVien246(id, ten, taiKhoan, matKhau, ngaySinh, diaChi, sdt, email, viTri);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return thanhVien;
    }
}