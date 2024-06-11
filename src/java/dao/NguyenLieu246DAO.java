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
public class NguyenLieu246DAO extends DAO{
    
    public NguyenLieu246DAO(){
        super();
    }
    
    public ArrayList<NguyenLieu246> timKiemTheoTen(String key){
        ArrayList<NguyenLieu246> result = new ArrayList<NguyenLieu246>();
        String sql = "SELECT * FROM NguyenLieu246 WHERE ten LIKE ?";
        try{
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, "%" + key + "%");
            ResultSet rs = ps.executeQuery();
 
            while(rs.next()){
                NguyenLieu246 rm = new NguyenLieu246();
                rm.setId(rs.getInt("id"));
                rm.setTen(rs.getString("ten"));
                rm.setGia(rs.getFloat("gia"));
                rm.setSl(rs.getInt("sl"));
                result.add(rm);
            }
        }catch(Exception e){
            e.printStackTrace();
        }   
        return result;
    }
    
    public NguyenLieu246 getById(int id) {
        PreparedStatement stmt = null;
        ResultSet rs = null;
        NguyenLieu246 nguyenLieu = null;

        try {
            String query = "SELECT * FROM NguyenLieu246 WHERE id = ?";
            stmt = con.prepareStatement(query);
            stmt.setInt(1, id);

            rs = stmt.executeQuery();
            
            if (rs.next()) {
                nguyenLieu = new NguyenLieu246();
                nguyenLieu.setId(rs.getInt("id"));
                nguyenLieu.setTen(rs.getString("ten"));
                nguyenLieu.setGia(rs.getFloat("gia"));
                nguyenLieu.setSl(rs.getInt("sl"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return nguyenLieu;
    }
}