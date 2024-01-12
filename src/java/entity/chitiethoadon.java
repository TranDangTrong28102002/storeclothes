/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Admin
 */
public class chitiethoadon {
    private int idCTHD,idHoaDon, idSanPham;
    private int soLuong;
    private String size;

    public chitiethoadon() {
    }

    public chitiethoadon(int idCTHD, int idHoaDon, int idSanPham, int soLuong, String size) {
        this.idCTHD = idCTHD;
        this.idHoaDon = idHoaDon;
        this.idSanPham = idSanPham;
        this.soLuong = soLuong;
        this.size = size;
    }

    public void setIdCTHD(int idCTHD) {
        this.idCTHD = idCTHD;
    }

    public void setIdHoaDon(int idHoaDon) {
        this.idHoaDon = idHoaDon;
    }

    public void setIdSanPham(int idSanPham) {
        this.idSanPham = idSanPham;
    }

    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public int getIdCTHD() {
        return idCTHD;
    }

    public int getIdHoaDon() {
        return idHoaDon;
    }

    public int getIdSanPham() {
        return idSanPham;
    }

    public int getSoLuong() {
        return soLuong;
    }

    public String getSize() {
        return size;
    }

    
    
    
}
