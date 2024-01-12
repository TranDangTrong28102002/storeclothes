/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Admin
 */
public class kichco {
    private String idKC,idSanPham,size;
    private int soluong;

    public kichco() {
    }
    
    
    public kichco(String idKC, String idSanPham, String size, int soluong) {
        this.idKC = idKC;
        this.idSanPham = idSanPham;
        this.size = size;
        this.soluong = soluong;
    }

    
    
    public String getIdSanPham() {
        return idSanPham;
    }

    public void setIdSanPham(String idSanPham) {
        this.idSanPham = idSanPham;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public int getSoluong() {
        return soluong;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }
    
}
