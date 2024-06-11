/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import static dao.DAO.con;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.*;

/**
 *
 * @author Admin
 */
public class HoaDon246DAO extends DAO{
    public HoaDon246DAO(){
        super();
    }
    
    public int select() {
        HoaDon246 hoaDon = null;

        try{
            String sql = "SELECT * FROM HoaDon246 WHERE id = (SELECT MAX(id) FROM HoaDon246)";
            PreparedStatement statement = con.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                hoaDon = new HoaDon246();
                hoaDon.setId(resultSet.getInt("id"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return hoaDon.getId();
    }
    
    public void insert(HoaDon246 hoaDon) {
        PreparedStatement preparedStatement = null;

        try {

            String sql = "INSERT INTO hoadon246 (ngayTao, ghiChu, tongTien, id_nhaCungCap, id_nhanVienKho) VALUES (?, ?, ?, ?, ?)";
            preparedStatement = con.prepareStatement(sql);

            preparedStatement.setDate(1, (Date) hoaDon.getNgayTao());
            preparedStatement.setString(2, hoaDon.getGhiChu());
            preparedStatement.setFloat(3, hoaDon.getTongTien());
            preparedStatement.setInt(4, hoaDon.getNhaCungCap().getId());
            preparedStatement.setInt(5, hoaDon.getNhanVienKho().getId());

            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
