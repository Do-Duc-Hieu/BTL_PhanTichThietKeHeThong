package model;

import java.io.Serializable;

public class NguyenLieu246 {
    private int id;
    private String ten;
    private float gia;
    private int sl;

    // Constructors
    public NguyenLieu246() {
        // Mặc định constructor
    }

    public NguyenLieu246(int id, String ten, float gia) {
        this.id = id;
        this.ten = ten;
        this.sl = 0;
        this.gia = gia;
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public float getGia() {
        return gia;
    }

    public void setGia(float gia) {
        this.gia = gia;
    }
    
    public int getSl() {
        return sl;
    }

    public void setSl(int sl) {
        this.sl = sl;
    }
}
