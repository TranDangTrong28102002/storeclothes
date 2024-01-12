/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Admin
 */
public class danhsachhoadon {
    private int idDSHD;
    private String soDienThoaiKH, ngayBan;
    private int idNhanVien;
    private int xacNhan;
    private float thanhTien;
    public danhsachhoadon() {
    }

    public danhsachhoadon(int idDSHD, String soDienThoaiKH, int idNhanVien, String ngayBan, int xacNhan, float thanhTien) {
        this.idDSHD = idDSHD;
        this.soDienThoaiKH = soDienThoaiKH;
        this.idNhanVien = idNhanVien;
        this.ngayBan = ngayBan;
        this.xacNhan = xacNhan;
        this.thanhTien = thanhTien;
    }

    public int getIdDSHD() {
        return idDSHD;
    }

    public void setIdDSHD(int idDSHD) {
        this.idDSHD = idDSHD;
    }

    public String getSoDienThoaiKH() {
        return soDienThoaiKH;
    }

    public void setSoDienThoaiKH(String soDienThoaiKH) {
        this.soDienThoaiKH = soDienThoaiKH;
    }

    public int getIdNhanVien() {
        return idNhanVien;
    }

    public void setIdNhanVien(int idNhanVien) {
        this.idNhanVien = idNhanVien;
    }

    public String getNgayBan() {
        return ngayBan;
    }

    public void setNgayBan(String ngayBan) {
        this.ngayBan = ngayBan;
    }
    
    public float getThanhTien() {
        return thanhTien;
    }

    public void setThanhTien(float thanhTien) {
        this.thanhTien = thanhTien;
    }
    
    public int getXacNhan(){
        return xacNhan;
    }
    public void setXacNhan(int xacNhan){
        this.xacNhan = xacNhan;
    }
}
