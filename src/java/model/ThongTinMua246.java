package model;

import java.io.Serializable;

public class ThongTinMua246{
    private int id;
    private int idNguyenLieu;
    private int idHoaDon;
    private int sl;

    // Constructors
    public ThongTinMua246() {
        // Mặc định constructor
    }

    public ThongTinMua246(int id, int idNguyenLieu, int idHoaDon, int sl) {
        this.id = id;
        this.idNguyenLieu = idNguyenLieu;
        this.idHoaDon = idHoaDon;
        this.sl = sl;
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdNguyenLieu() {
        return idNguyenLieu;
    }

    public void setIdNguyenLieu (int idNguyenLieu) {
        this.idNguyenLieu = idNguyenLieu;
    }
    
    public int getIdHoaDon() {
        return idHoaDon;
    }

    public void setIdHoaDon (int idHoaDon) {
        this.idHoaDon = idHoaDon;
    }
    
    public int getSl() {
        return sl;
    }
    public void setSl (int sl) {
        this.sl = sl;
    }
}
