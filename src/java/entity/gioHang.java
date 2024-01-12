/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;



/**
 *
 * @author Admin
 */
public class gioHang {
    private String idGH,soDienThoaiKH,idSanPham,soLuong, size, img, title, idMau, giaBan;
    
    public gioHang() {
    }

    public gioHang(String idGH, String soDienThoaiKH, String idSanPham, String soLuong, String size) {
        this.idGH = idGH;
        this.soDienThoaiKH = soDienThoaiKH;
        this.idSanPham = idSanPham;
        this.soLuong = soLuong;
        this.size = size;
    }

    public String getIdGH() {
        return idGH;
    }

    public void setIdGH(String idGH) {
        this.idGH = idGH;
    }

    public String getSoDienThoaiKH() {
        return soDienThoaiKH;
    }

    public void setSoDienThoaiKH(String soDienThoaiKH) {
        this.soDienThoaiKH = soDienThoaiKH;
    }

    public String getIdSanPham() {
        return idSanPham;
    }

    public void setIdSanPham(String idSanPham) {
        this.idSanPham = idSanPham;
    }

    public String getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(String soLuong) {
        this.soLuong = soLuong;
    }
    
    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
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
    
    public String getGiaBan() {
        return giaBan;
    }

    public void setGiaBan(String giaBan) {
        this.giaBan = giaBan;
    }
    
//    public List<gioHang> getAllItem(String txt){
//        List<gioHang> list = new ArrayList<>();
//        txt = txt.substring(0,txt.length()-1);
//        String[] str = txt.split("/");
//        for(String tmp: str){
//            String x[] = tmp.split(":");
//            gioHang gh = new gioHang();
//            gh.setIdSanPham(x[0]);
//            gh.setSoLuong(x[1]);
//            list.add(gh);
//        }
//        return list;
//    }
}
