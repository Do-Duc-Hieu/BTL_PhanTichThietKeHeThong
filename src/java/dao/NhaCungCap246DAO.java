/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import static dao.DAO.con;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.*;

/**
 *
 * @author Admin
 */
public class NhaCungCap246DAO extends DAO{
    public NhaCungCap246DAO (){
        super();
    }
    
    public ArrayList<NhaCungCap246> timKiemTheoTen(String key){
        ArrayList<NhaCungCap246> result = new ArrayList<NhaCungCap246>();
        String sql = "SELECT * FROM NhaCungCap246 WHERE ten LIKE ?";
        try{
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, "%" + key + "%");
            ResultSet rs = ps.executeQuery();
 
            while(rs.next()){
                NhaCungCap246 rm = new NhaCungCap246();
                rm.setId(rs.getInt("id"));
                rm.setTen(rs.getString("ten"));
                rm.setDiaChi(rs.getString("diaChi"));
                rm.setSdt(rs.getString("sdt"));
                rm.setEmail(rs.getString("email"));
                result.add(rm);
            }
        }catch(Exception e){
            e.printStackTrace();
        }   
        return result;
    }
    
    public NhaCungCap246 getNhaCungCapByMa(int maNhaCungCap) {
        PreparedStatement stmt = null;
        ResultSet rs = null;
        NhaCungCap246 nhaCungCap = null;

        try {
            // Truy vấn để lấy thông tin món ăn theo mã món ăn
            String query = "SELECT * FROM NhaCungCap246 WHERE id = ?";
            stmt = con.prepareStatement(query);
            stmt.setInt(1, maNhaCungCap);
            rs = stmt.executeQuery();

            if (rs.next()) {
                // Lấy thông tin món ăn từ kết quả truy vấn
                int id = rs.getInt("id");
                String ten = rs.getString("ten");
                String diaChi = rs.getString("diaChi");
                String sdt = rs.getString("sdt");
                String email = rs.getString("email");

                nhaCungCap = new NhaCungCap246(id, ten, diaChi, sdt, email);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return nhaCungCap;
    }
}
