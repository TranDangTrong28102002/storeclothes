/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Admin
 */
public class danhmucsanpham {
    private String idDanhMucSanPham,theloai,tenLoaiSanPham;

    public danhmucsanpham() {
    }

    public danhmucsanpham(String idDanhMucSanPham, String theloai, String tenLoaiSanPham) {
        this.idDanhMucSanPham = idDanhMucSanPham;
        this.theloai = theloai;
        this.tenLoaiSanPham = tenLoaiSanPham;
    }

    public String getIdDanhMucSanPham() {
        return idDanhMucSanPham;
    }

    public void setIdDanhMucSanPham(String idDanhMucSanPham) {
        this.idDanhMucSanPham = idDanhMucSanPham;
    }

    public String getTheloai() {
        return theloai;
    }

    public void setTheloai(String theloai) {
        this.theloai = theloai;
    }

    public String getTenLoaiSanPham() {
        return tenLoaiSanPham;
    }

    public void setTenLoaiSanPham(String tenLoaiSanPham) {
        this.tenLoaiSanPham = tenLoaiSanPham;
    }

    
}
