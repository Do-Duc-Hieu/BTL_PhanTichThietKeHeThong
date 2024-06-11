package model;

import dao.NguyenLieu246DAO;
import java.io.Serializable;
import java.sql.Date;
import java.util.ArrayList;
public class HoaDon246{
    private int id;
    private float tongTien;
    private Date ngayTao;
    private String ghiChu;
    private NhanVienKho246 nhanVienKho;
    private NhaCungCap246 nhaCungCap;
    private ArrayList <ThongTinMua246> thongTinMuas ;

    // Constructors
    public HoaDon246() {
        // Mặc định constructor
       this.thongTinMuas = new ArrayList<>();
    }

    public HoaDon246(int id, Date ngayTao, float tongTien, String ghiChu, ArrayList<ThongTinMua246> thongTinMuas) {
        this.id = id;
        this.ngayTao = ngayTao;
        this.ghiChu = ghiChu;
        this.tongTien = tongTien;
        this.thongTinMuas = thongTinMuas;
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getNgayTao() {
        return ngayTao;
    }

    public void setNgayTao() {
        this.ngayTao = new Date(System.currentTimeMillis());
    }
    
    public void setNgayTaoQR(Date ngayTao) {
        this.ngayTao = ngayTao;
    }
    
    public String getGhiChu() {
        return ghiChu;
    }

    public void setGhiChu(String ghiChu) {
        this.ghiChu = ghiChu;
    }

    public NhanVienKho246 getNhanVienKho() {
        return nhanVienKho;
    }

    public void setNhanVienKho(NhanVienKho246 nhanVienKho) {
        this.nhanVienKho = nhanVienKho;
    }
    
    public NhaCungCap246 getNhaCungCap() {
        return nhaCungCap;
    }

    public void setNhaCungCap(NhaCungCap246 nhaCungCap) {
        this.nhaCungCap = nhaCungCap;
    }
    
    public ArrayList<ThongTinMua246> getThongTinMua() {
        return thongTinMuas;
    }

    public void setThongTinMua(ArrayList<ThongTinMua246> thongTinMuas) {
        this.thongTinMuas = thongTinMuas;
    }

    public float getTongTien() {
        return tongTien;
    }
    
    public void setTongTien(float tongTien) {
        this.tongTien = tongTien;
    }
}
