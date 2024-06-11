package dao;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import model.*;

public class MonAn246DAO extends DAO{
    public MonAn246DAO() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    public ArrayList<MonAn246> timKiemTheoTen(String key){
        ArrayList<MonAn246> result = new ArrayList<MonAn246>();
        String sql = "SELECT * FROM MonAn246 WHERE ten LIKE ?";
        try{
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, "%" + key + "%");
            ResultSet rs = ps.executeQuery();
 
            while(rs.next()){
                MonAn246 rm = new MonAn246();
                rm.setId(rs.getInt("id"));
                rm.setTen(rs.getString("ten"));
                rm.setThanhPhan(rs.getString("thanhPhan"));
                rm.setGia(rs.getFloat("gia"));
                rm.setMoTa(rs.getString("moTa"));
                result.add(rm);
            }
        }catch(Exception e){
            e.printStackTrace();
        }   
        return result;
    }
    
    // Hàm tìm món ăn bởi mã món ăn
    public MonAn246 getMonAnByMa(int maMonAn) {
        PreparedStatement stmt = null;
        ResultSet rs = null;
        MonAn246 monAn = null;

        try {
            // Truy vấn để lấy thông tin món ăn theo mã món ăn
            String query = "SELECT * FROM MonAn246 WHERE id = ?";
            stmt = con.prepareStatement(query);
            stmt.setInt(1, maMonAn);
            rs = stmt.executeQuery();

            if (rs.next()) {
                // Lấy thông tin món ăn từ kết quả truy vấn
                int id = rs.getInt("id");
                String ten = rs.getString("ten");
                float gia = rs.getFloat("gia");
                String thanhPhan = rs.getString("thanhPhan");
                String moTa = rs.getString("moTa");

                monAn = new MonAn246(id, ten, gia, thanhPhan, moTa);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return monAn;
    }
}
