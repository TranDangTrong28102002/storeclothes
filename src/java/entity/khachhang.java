/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Admin
 */
public class khachhang {
    private String sdtkhachhang,tenkhachhang,diaChi;
    private String email,gioiTinh;

    public khachhang() {
    }

    public khachhang(String sdtkhachhang, String tenkhachhang, String diaChi, String email,String gioiTinh) {
        this.sdtkhachhang = sdtkhachhang;
        this.tenkhachhang = tenkhachhang;
        this.diaChi = diaChi;
        this.email = email;
        this.gioiTinh = gioiTinh;
    }
   
    public String getTenkhachhang() {
        return tenkhachhang;
    }

    public void setTenkhachhang(String tenkhachhang) {
        this.tenkhachhang = tenkhachhang;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSdtkhachhang() {
        return sdtkhachhang;
    }

    public void setSdtkhachhang(String sdtkhachhang) {
        this.sdtkhachhang = sdtkhachhang;
    }

    public String getGioiTinh() {
        return gioiTinh;
    }

    public void setGioiTinh(String gioiTinh) {
        this.gioiTinh = gioiTinh;
    }
    
            
}
