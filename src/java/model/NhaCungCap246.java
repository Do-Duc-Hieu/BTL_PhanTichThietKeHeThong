package model;

import java.io.Serializable;

public class NhaCungCap246 {
    private int id;
    private String ten;
    private String diaChi;
    private String sdt;
    private String email;

    // Constructors
    public NhaCungCap246() {
        // Mặc định constructor
    }

    public NhaCungCap246(int id, String ten, String diaChi, String sdt, String email) {
        this.id = id;
        this.ten = ten;
        this.diaChi = diaChi;
        this.sdt = sdt;
        this.email = email;
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

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
