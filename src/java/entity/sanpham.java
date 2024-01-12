/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Admin
 */
public class sanpham {
    private String idSanPham;
    private String idDanhMucSanPham,idMau;
    private String img, title;
    private float giaBan ;
    private float giamGia;
    private String moTa; 
    private String ngayNhap;
    
    public sanpham() {
    }

    public sanpham(String idSanPham, String idDanhMucSanPham, String idMau, String img, String title, float giaBan, float giamGia, String moTa, String ngayNhap) {
        this.idSanPham = idSanPham;
        this.idDanhMucSanPham = idDanhMucSanPham;
        this.idMau = idMau;
        this.img = img;
        this.title = title;
        this.giaBan = giaBan;
        this.giamGia = giamGia;
        this.moTa = moTa;
        this.ngayNhap = ngayNhap;
    }

    
    
    public String getIdSanPham() {
        return idSanPham;
    }

    public void setIdSanPham(String idSanPham) {
        this.idSanPham = idSanPham;
    }

    public String getIdDanhMucSanPham() {
        return idDanhMucSanPham;
    }

    public void setIdDanhMucSanPham(String idDanhMucSanPham) {
        this.idDanhMucSanPham = idDanhMucSanPham;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getIdMau() {
        return idMau;
    }

    public void setIdMau(String idMau) {
        this.idMau = idMau;
    }

    public float getGiaBan() {
        return giaBan;
    }

    public void setGiaBan(float giaBan) {
        this.giaBan = giaBan;
    }

    public float getGiamGia() {
        return giamGia;
    }

    public void setGiamGia(float giamGia) {
        this.giamGia = giamGia;
    }

    public String getMoTa() {
        return moTa;
    }

    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }

    public String getNgayNhap() {
        return ngayNhap;
    }

    public void setNgayNhap(String ngayNhap) {
        this.ngayNhap = ngayNhap;
    }

    
    
}
