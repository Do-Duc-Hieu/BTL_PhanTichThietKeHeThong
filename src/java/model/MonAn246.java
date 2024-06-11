package model;

import java.io.Serializable;

public class MonAn246 {
    private int id;
    private String ten;
    private float gia;
    private String thanhPhan;
    private String moTa;

    // Constructors
    public MonAn246() {
        // Mặc định constructor
    }

    public MonAn246(int id, String ten, float gia, String thanhPhan, String moTa) {
        this.id = id;
        this.ten = ten;
        this.gia = gia;
        this.thanhPhan = thanhPhan;
        this.moTa = moTa;
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

    public String getThanhPhan() {
        return thanhPhan;
    }

    public void setThanhPhan(String thanhPhan) {
        this.thanhPhan = thanhPhan;
    }

    public String getMoTa() {
        return moTa;
    }

    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }
}
