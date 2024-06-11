package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.NguyenLieu246;
import model.ThongTinMua246;

public class ThongTinMua246DAO extends DAO {

    public ThongTinMua246DAO() {
        super();
    }
    
    public void insert(int idNguyenLieu, int idHoaDon, int sl) {
        PreparedStatement preparedStatement = null;

        try {
            String sql = "INSERT INTO thongtinmua246 (id_nguyenLieu, id_hoaDon, sl) VALUES (?, ?, ?)";
            preparedStatement = con.prepareStatement(sql);

            preparedStatement.setInt(1, idNguyenLieu);
            preparedStatement.setInt(2, idHoaDon);
            preparedStatement.setInt(3, sl);

            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
