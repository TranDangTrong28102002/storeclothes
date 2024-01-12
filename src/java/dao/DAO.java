/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.gioHang;
import entity.chitiethoadon;
import entity.danhsachhoadon;
import entity.dathang;
import entity.kichco;
import entity.mau;
import entity.account;
import entity.sanpham;
import entity.khachhang;
import entity.danhmucsanpham;
import entity.productimage;

        
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author Admin
 */
public class DAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    public List<danhmucsanpham> getAllDanhMucSanPham(){
        List<danhmucsanpham> list = new ArrayList<>();
        try {
            String query = "SELECT * FROM danhmucsanpham";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                
                list.add( new danhmucsanpham( rs.getString(1),rs.getString(2) ,rs.getString(3)) );
            }
            ps.close();
            conn.close();
        } catch (Exception e) {
        }
        return list;
    }
    
    public void updateDanhMucSanPhamByID(int idDanhMucSanPham, danhmucsanpham dmsp){
        try{
            String query = "update DanhMucSanPham set theloai = ?, tenLoaiSanPham = ? where idDanhMucSanPham = ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, dmsp.getTheloai());
            ps.setString(2, dmsp.getTenLoaiSanPham());
            ps.setInt(3, idDanhMucSanPham);
            ps.executeUpdate();
            
            ps.close();
            conn.close();
        }catch(Exception e){
            
        }
    }
    
    public void deleteDanhMucSanPhamByID(int idDanhMucSanPham){
        try{
            String query = "delete from DanhMucSanPham where idDanhMucSanPham = ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, idDanhMucSanPham);
            ps.executeUpdate();
            
            ps.close();
            conn.close();
        }catch(Exception e){
            
        }
    }
    
    public danhmucsanpham getDanhMucSanPhamByID(String iddanhmucsanpham){
        danhmucsanpham dmsp = new danhmucsanpham();
        try {
            String query = "select * from danhmucsanpham" + "  where idDanhMucSanPham = ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, iddanhmucsanpham );
            rs = ps.executeQuery();
            while(rs.next()){
                

                dmsp = new danhmucsanpham( rs.getString(1),rs.getString(2) ,rs.getString(3)) ;

                dmsp = new danhmucsanpham( rs.getString(1),rs.getString(2) ,rs.getString(3)) ;

            }
            ps.close();
            conn.close();
        } catch (Exception e) {
        }
        return dmsp;
    }


    public List<sanpham> getAllProductByID(String iddanhmucsanpham){
        List<sanpham> list = new ArrayList<>();
        try {
            String query = "select * from sanpham " + " where idDanhMucSanPham = ? ";

            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, iddanhmucsanpham);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(  new sanpham( rs.getString(1), rs.getString(2), rs.getString(3), 
                        rs.getString(4), rs.getString(5) , rs.getFloat(6) , rs.getFloat(7),
                        rs.getString(8) , rs.getString(9) ) );
            }
            ps.close();
            conn.close();
            
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
    
    public List<sanpham> getAllProductByNameSanPham(String namesanpham){
        List<sanpham> list = new ArrayList<>();
        try {
            String query = "select * from sanpham " + " where title = ? ";

            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, namesanpham);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(  new sanpham( rs.getString(1), rs.getString(2), rs.getString(3), 
                        rs.getString(4), rs.getString(5) , rs.getFloat(6) , rs.getFloat(7),
                        rs.getString(8) , rs.getString(9) ) );
            }
            ps.close();
            conn.close();
            
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
    
    public List<sanpham> getAllProduct(){
        List<sanpham> list = new ArrayList<>();
        try {
            String query = "select * from sanpham ";

            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(  new sanpham( rs.getString(1), rs.getString(2), rs.getString(3), 
                        rs.getString(4), rs.getString(5) , rs.getFloat(6) , rs.getFloat(7),
                        rs.getString(8) , rs.getString(9) ) );
            }
            ps.close();
            conn.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
    
    public List<mau> getListMau(){
        List<mau> list = new ArrayList<>();
        
        try{
            String query = "SELECT * FROM Mau";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new mau(rs.getString(1), rs.getString(2)));
            }
            ps.close();
            conn.close();
        }catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public sanpham getProductByID(String idSanPham){
        sanpham sp = new sanpham();
        try {
            String query = "select * from sanpham " + " where idSanPham = ? ";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, idSanPham);
            rs = ps.executeQuery();
            while(rs.next()){
                sp =  new sanpham( rs.getString(1), rs.getString(2),
                        rs.getString(3), rs.getString(4) , rs.getString(5) , rs.getFloat(6),
                        rs.getInt(7) , rs.getString(8), rs.getString(9) );

            }
            ps.close();
            conn.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return sp;
    }

    public List<productimage> getProductImageByID(String idsanpham){
        List<productimage> list = new ArrayList<>();
        try {
            String query = "select * from productimage " + " where idSanPham = ? ";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, idsanpham);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add( new productimage( rs.getString(1), rs.getString(2) ) );
            }
            ps.close();
            conn.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public List<gioHang> getProductBySDTKhachHang(String soDienThoaiKH){
        List<gioHang> list = new ArrayList<>();
        try {
            String query = "SELECT * " +
                "FROM GioHang GH " +
                "JOIN KhachHang KH ON GH.soDienThoaiKH = KH.sdt " +
                "JOIN SanPham SP ON GH.idSanPham = SP.idSanPham " +
                "WHERE GH.soDienThoaiKH = ?";

            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, soDienThoaiKH);
            rs = ps.executeQuery();
            while(rs.next()){
                gioHang tmp = new gioHang( rs.getString(1), rs.getString(2),rs.getString(3),rs.getString(4), rs.getString(5) );
                tmp.setImg(rs.getString(14));
                tmp.setTitle(rs.getString(15));
                tmp.setIdMau(rs.getString(13));
                tmp.setGiaBan(rs.getString(16));
                list.add(tmp);
            }
            ps.close();
            conn.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
    

    
    public void InsertGioHangByID (gioHang gioHang){
        try {
            String query = "insert into giohang(soDienThoaiKH, idSanPham, soLuong, size) " + " values(?,?,?,?) ";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, gioHang.getSoDienThoaiKH());
            ps.setString(2, gioHang.getIdSanPham());
            ps.setInt(3, Integer.parseInt(gioHang.getSoLuong()));
            ps.setString(4, gioHang.getSize());
            ps.executeUpdate();
            ps.close();
            conn.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
    
    public void insertHoaDon(String sdtKH, List<gioHang> gh, float tongTien){
        try{
            String query = "insert into DanhSachHoaDon (soDienThoaiKH, idNhanVien, ngayBan, xacNhan, thanhTien) values (?, ?, ?, ?, ?)";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query, PreparedStatement.RETURN_GENERATED_KEYS);
            ps.setString(1, sdtKH);
            ps.setInt(2, -1);
            
            Date currentDate = new Date();
            SimpleDateFormat dateFormat = new SimpleDateFormat("dd:MM:yyyy");
            String formattedDate = dateFormat.format(currentDate);
            ps.setString(3, formattedDate);
            ps.setInt(4, 0);
            ps.setFloat(5, tongTien);
            long idDH = -1;
            ps.executeUpdate();
            ResultSet rs = ps.getGeneratedKeys();
            if (rs.next()) {
                idDH = rs.getLong(1);
            }
            rs.close();
            ps.close();
            String query2 = "insert into ChiTietHoaDon (idHoaDon, idSanPham, soLuong, size) values (" + Long.toString(idDH) + ", ?, ?, ?)";
            System.out.println(gh.size());
            for(int i = 0; i < gh.size(); i++){
                conn = new DBContext().getConnection();
                ps = conn.prepareStatement(query2);
                ps.setInt(1, Integer.parseInt(gh.get(i).getIdSanPham()));
                ps.setInt(2, Integer.parseInt(gh.get(i).getSoLuong()));
                ps.setString(3, gh.get(i).getSize());
                
                ps.executeUpdate();
                ps.close();
                conn.close();
                deleteGHById(Integer.parseInt(gh.get(i).getIdGH()));
            }
            conn.close();
        }
        catch(Exception e){
        }
    }
    public void deleteGHById(int idGH){
        try{
            String query = "delete from GioHang where idGH = ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, idGH);
            ps.executeUpdate();
            
            ps.close();
            conn.close();
        }
        catch(Exception e){
            System.out.println(e);
        }
    }
    
    public account getAccountByUserName(String username,String pass){
        account acc = new account();
        try {
            String query = "select * from account " + " where username = ? and password = ? ";

            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while(rs.next()){
                return new account( rs.getString(1), rs.getString(2),rs.getString(3), rs.getString(4) );
            }
            ps.close();
            conn.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return acc;
    }
    public void updateAccount(String username, String newPassword){
        try{
            String query = "UPDATE account SET password = ? WHERE username = ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, newPassword);
            ps.setString(2, username);
            ps.executeUpdate();
            ps.close();
            conn.close();
        }
        catch(Exception e){
        }
    }
    
    public void InsertKhachHang(String sdtKhachHang,String tenKhachHang , String gioiTinh,
                            String diachi,String email ){
        try {

            khachhang khachHang = new khachhang();
            String query = " INSERT INTO khachhang " + " values(?,?,?,?,?) " ;
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, sdtKhachHang);
            ps.setString(2, tenKhachHang);
            ps.setString(3, diachi);
            ps.setString(4, email);
            ps.setString(5, gioiTinh);
            ps.executeUpdate();
            ps.close();
            conn.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }  
  
    public void InsertAccount(String username,String password ){
        try {

            account account = new account();
            String query = " INSERT INTO account " + " values(?,?,?,?) " ;
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3, "1");
            ps.setString(4, "Khách hàng");
            ps.executeUpdate();
            ps.close();
            conn.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }    


    public kichco getKichCoByID(String idSanPham) {
        kichco kichCo = new kichco();
        try {
            String query = "select * from kichco " + " where idSanPham = ? ";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, idSanPham);
            rs = ps.executeQuery();
            while(rs.next()){
                kichCo =  new kichco( rs.getString(1), rs.getString(2),rs.getString(3), rs.getInt(4) );
            }
            ps.close();
            conn.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return kichCo;
    }

    public mau getMauByID(String idMau) {
        mau mau = new mau();
        try {
            String query = "select * from mau " + " where idMau = ? ";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, idMau);
            rs = ps.executeQuery();
            while(rs.next()){
                mau =  new mau( rs.getString(1), rs.getString(2));
            }
            ps.close();
            conn.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return mau;
    }
//    public List<danhsachhoadon> getAllDanhSachHoaDon(){
//        List<danhsachhoadon> list = new ArrayList<>();
//        try {
//            String query = "SELECT idDSHD, idSanPham, soDienThoaiKH, idNhanVien, ngayBan, thanhtien, soluong "
//                    + "FROM danhsachhoadon";
//            conn = new DBContext().getConnection();
//            ps = conn.prepareStatement(query);
//            rs = ps.executeQuery();
//            while(rs.next()){
//                int idDSHD = rs.getInt(1);
//                int idSP = rs.getInt(2);
//                String SDT = rs.getString(3);
//                int idNV = rs.getInt(4);
//                String ngay = rs.getString(5);
//                int thanhtien = rs.getInt(6);
//                int soluong = rs.getInt(7);
//                
//                sanpham a = this.getProductByID(String.valueOf(idSP));
//                String img = a.getImg();
//                int gia =  Math.round(a.getGiaBan()-a.getGiamGia());
//                String title = a.getTitle();
//                
//                danhsachhoadon hd = new danhsachhoadon(idDSHD, idSP, SDT, idNV, ngay, thanhtien, soluong);
//                list.add(hd);
//            }
//            ps.close();
//            conn.close();
//        } catch (Exception e) {
//        }
//        return list;
//    }
    public khachhang getInfoKhachHang(String sdtKH){
        try{
            String query = "SELECT * FROM KhachHang WHERE sdt = ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            
            ps.setString(1, sdtKH);
            rs = ps.executeQuery();
            khachhang kh = null;
            while(rs.next()){
                kh = new khachhang(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
                break;
            }
            ps.close();
            conn.close();
            return kh;
        }catch(Exception e){
        }
        return null;
    }
    public void updateKH(khachhang kh){
        try{
            String query = "update KhachHang set tenKhachHang = ?, diaChi = ?, email = ?, gioiTinh = ? WHERE sdt = ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            
            ps.setString(1, kh.getTenkhachhang());
            ps.setString(2, kh.getDiaChi());
            ps.setString(3, kh.getEmail());
            ps.setString(4, kh.getGioiTinh());
            ps.setString(5, kh.getSdtkhachhang());
            System.out.println(kh.getSdtkhachhang());
            System.out.println("OK1");
            ps.executeUpdate();
            System.out.println("OKE2");
            ps.close();
            conn.close();
        }catch(Exception e){
            
        }
    }
    public ArrayList<danhsachhoadon> getALlDanhSachHoaDon(String sdtKH){
        try{
            String query = "select * from DanhSachHoaDon where soDienThoaiKH = ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            
            ps.setString(1, sdtKH);
            rs = ps.executeQuery();
            
            ArrayList<danhsachhoadon> dshd = new ArrayList<>();
            while(rs.next()){
                dshd.add(new danhsachhoadon(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getInt(5), rs.getFloat(6)));
            }
            ps.close();
            conn.close();
            return dshd;
        }catch(Exception e){
            
        }
        return null;
    }
    
    public ArrayList<danhsachhoadon> getALlDSHD(){
        try{
            String query = "select * from DanhSachHoaDon";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            
            ArrayList<danhsachhoadon> dshd = new ArrayList<>();
            while(rs.next()){
                dshd.add(new danhsachhoadon(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getInt(5), rs.getFloat(6)));
            }
            ps.close();
            conn.close();
            return dshd;
        }catch(Exception e){
            
        }
        return null;
    }
    public List<chitiethoadon> getChiTietHoaDonByID(int IdDSHD){
        try{
            List<chitiethoadon> ds = new ArrayList<>();
            String query = "select * from ChiTietHoaDon where idHoaDon = ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, IdDSHD);
            rs = ps.executeQuery();
            while(rs.next()){
                ds.add(new chitiethoadon(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4), rs.getString(5)));
            }
            rs.close();
            ps.close();
            conn.close();
            return ds;
        }catch(Exception e){
            
        }
        return null;
    }
    public void deleteHoaDonByID(int idDSHD){
        try{
            String query = "delete from DanhSachHoaDon where idDSHD = ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            
            ps.setInt(1, idDSHD);
            ps.executeUpdate();
            ps.close();
            conn.close();
            System.out.println("OKEY delete");
        }catch(Exception e){
            
        }
    }
    public void deleteChiTietHoaDonByID(int idDSHD){
        try{
            String query = "delete from ChiTietHoaDon where idHoaDon = ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            
            ps.setInt(1, idDSHD);
            ps.executeUpdate();
            ps.close();
            conn.close();
        }catch(Exception e){
            
        }
    }
    public List<account> getAllAccount(){
        List<account> account = new ArrayList<>();
        try{
            
            String query = "select * from account";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            
            rs = ps.executeQuery();
            while(rs.next()){
                account.add(new account(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4)));
            }
            
            conn.close();
        }catch(Exception e){
            
        }
        return account;
    }
       public void adddanhmucsanpham( String idDanhMucSanPham, String theloai, String tenLoaiSanPham){
        String query ="insert into \n"
                +"DanhMucSanPham\n"
                +"values(?,?,?)";
        try{
            conn = new DBContext().getConnection(); //mo ket noi toi SQL server
            ps=conn.prepareStatement(query);
            ps.setString(1, idDanhMucSanPham);
            ps.setString(2,theloai);
            ps.setString(3,tenLoaiSanPham);
            ps.executeUpdate();
        }
        catch(Exception e){
            
        }
    }
    public void deletedanhmucsanpham(String idDanhMucSanPham){
        String query="delete from DanhMucSanPham\n"
                + "where idDanhMucSanPham = ?";
        try {
            conn = new DBContext().getConnection(); //mo ket noi toi SQL server
            ps=conn.prepareStatement(query);
            ps.setString(1,idDanhMucSanPham); 
            ps.executeUpdate();
        }catch(Exception e){
            
        }
    }
    public void addsanpham( String idSanPham, String idDanhMucSanPham, String idMau, String img, String title, float giaBan, float giamGia, String moTa, String ngayNhap){
        String query ="insert into \n"
                +"SanPham\n"
                +"values(?,?,?,?,?,?,?,?,?)";
        try{
            conn = new DBContext().getConnection(); //mo ket noi toi SQL server
            ps=conn.prepareStatement(query);
            ps.setString(1, idSanPham);
            ps.setString(2,idDanhMucSanPham);
            ps.setString(3,idMau);
            ps.setString(4, img);
            ps.setString(5, title);
            ps.setFloat(6, giaBan);
            ps.setFloat(7, giamGia);
            ps.setString(8,moTa);
            ps.setString(9,ngayNhap);
            ps.executeUpdate();
        }
        catch(Exception e){
            
        }
    }
    public danhmucsanpham getDanhMucSanPham(String idDanhMucSanPham){
        String query = "select * from DanhMucSanPham\n"
                +"where idDanhMucSanPham = ?";
        
        try {
            conn = new DBContext().getConnection(); //mo ket noi toi SQL server
            ps=conn.prepareStatement(query);
            ps.setString(1,idDanhMucSanPham);
            rs= ps.executeQuery();
            while(rs.next()){
                danhmucsanpham a;
                a = new danhmucsanpham(                
                        rs.getString(1),
                        rs.getString(2), 
                        rs.getString(3)
                        );
                return a;
            }
        }
        catch(Exception e){            
        } 
        return null;
    }
   public void updateDanhMucSanPham(String idDanhMucSanPham, String theloai, String tenLoaiSanPham) {
    String query = "UPDATE DanhMucSanPham "
            + "SET theloai = ?, "
            + "tenLoaiSanPham = ? "
            + "WHERE idDanhMucSanPham = ?";
    try {
        conn = new DBContext().getConnection(); // Mở kết nối tới SQL Server
        ps = conn.prepareStatement(query);
        ps.setString(1, theloai);
        ps.setString(2, tenLoaiSanPham);
        ps.setString(3, idDanhMucSanPham);
        ps.executeUpdate();
    } catch (Exception e) {
        // Xử lý ngoại lệ, ví dụ: in log hoặc thông báo lỗi
        e.printStackTrace();
    } finally {
        // Đảm bảo đóng tài nguyên sau khi sử dụng
        try {
            if (ps != null) {
                ps.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

}
