<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="entity.danhsachhoadon"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trang Admin</title>
        <style>
    *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: Arial, Arial, Helvetica, sans-serif;
}
li{
    list-style: none;
}
a{
    text-decoration: none;
    color: #212529;
}
body{
    color: #6C6D70;
    font-family: Arial, sans-serif;
    font-size: 16px;
    line-height: 24px;
}

img {
    border: none;
    max-width: 100%;
    height: auto;
}

main{
    padding-top: 80px;
}

table {
    width: 100%;
    margin-bottom: 1rem;
    color: #212529;
    border-spacing: 0;
}

table, td{
    border: 1px solid #dee2e6;
}

table td{
    padding: 0.75rem;
    vertical-align: middle;
}

.container-thongtin{
    padding-right: 15px;
    padding-left: 15px;
    margin-right: 5%;
    margin-left: 5%;
    max-width: 100%;
}

.dieuhuong-danhsach {
    list-style-type: none;
    display: flex;
    align-items: center;
    padding: 16px 0;
    border-bottom: 1px solid #f7f8f9;
}

.dieuhuong-noidung {
    display: list-item;
}
  
.dieuhuong-noidung + .dieuhuong-noidung:before {
    content: "－\00a0";
    font-style: normal;
    font-weight: normal;
    font-variant: normal;
    text-transform: none;
    line-height: 1;
    font-size: 10px;
    margin-right: 16px;
    margin-left: 8px;
    color: #6c6d70;
}

.dieuhuong-noidung a {
    color: gray;
}
  
.dieuhuong-noidung a:hover {
    color: black;
}

.taikhoan-wrapper{
    margin-top: 28px;
    margin-bottom: 64px;
}

.taikhoan-wrapper-row{
    display: flex;
    flex-wrap: wrap;
    margin-right: -15px;
    margin-left: -15px;
}

.taikhoan-caidat{
    flex: 0 0 33.333333%;
    max-width: 33.333333%;
}

.taikhoan-caidat-menu {
    max-width: 270px;
    width: 100%;
    padding: 32px;
}

.duong-vien {
    border: 1px solid #e7e8e9;
    border-radius: 32px 0px;
}

.taikhoan-caidat-menu-user {
    display: flex;
    align-items: center;
    padding-bottom: 24px;
}

.taikhoan-caidat-menu-user-avatar {
    width: 32px;
    height: 32px;
    overflow: hidden;
    border-radius: 50%;
}

.taikhoan-caidat-menu-user-name{
    padding-left: 20px;
}

.taikhoan-caidat-menu-user-name p {
    font-weight: 600;
    font-size: 16px;
    line-height: 24px;
    margin-bottom: 0;
}

.taikhoan-caidat-menu-luachon li {
    margin-top: 32px
}

.taikhoan-caidat-menu-luachon li a {
    display: flex;
    align-items: center;
    font-weight: 600;
    font-size: 14px;
    line-height: 16px;
    color: #808285;
}

.taikhoan-caidat-menu-luachon li.active a {
    color: #221f20;
}

.taikhoan-caidat-menu-luachon li a span {
    flex: 0 0 13px;
    max-width: 13px;
    margin-right: 12px;
    color: #808285;
}

.taikhoan-thongtin{
    flex: 0 0 66%;
    max-width: 66%;
}

.taikhoan-thongtin-tieude {
    display: flex;
    align-items: center;
}

.taikhoan-thongtin-tieude h2 {
    font-weight: 600;
    font-size: 24px;
    line-height: 32px;
    text-transform: uppercase;
    color: #221f20;
    display: flex;
    align-items: center;
}

.taikhoan-thongtin-noidung {
    margin-top: 32px;
    width: 100%;
}

.taikhoan-thongtin-noidung-canhbao {
    position: relative;
    padding: 0.75rem 1.25rem;
    margin-bottom: 1rem;
    border: 1px solid transparent;
    border-radius: 0.25rem;
    color: #004085;
    background-color: #cce5ff;
    border-color: #b8daff;
}

.taikhoan-thongtin-noidung-rows{
    display: flex;
}

.taikhoan-thongtin-noidung-row-1{
    position: relative;
    padding: 0.75rem 1.25rem;
    flex: 0 0 58.333333%;
    max-width: 58.333333%;
}

input[type=text]{
    border: 1px solid #E7E8E9;
    border-radius: 4px;
    padding: 15px;
    font-size: 14px;
    color: #57585A;
    font-family: Arial, sans-serif;
}

#khachhang_email{
    background-color:white;
}

.row-form-noidung, .row-form-noidung-radio {
    align-items: center;
    display: flex;
    flex-wrap: wrap;
    margin-right: -15px;
    margin-left: -15px;
    margin-bottom: 1rem;
}

.row-form-noidung .col-label, .row-form-noidung-radio .col-label {
    max-width: 150px;
    flex-basis: 0;
    flex-grow: 1;
}

.row-form-noidung .col-label label, .row-form-noidung-radio .col-label label {
    font-size: 14px;
    line-height: 16px;
    color: #3e3e3f;
}

.row-form-noidung .col-input, .row-form-noidung-radio .col-input {
    max-width: 550px;
    flex-basis: 0;
    flex-grow: 1;
}

.form-input{
    width: 100%;
    background-color: #f7f8f9;
}

.form-input:disabled{
    font-weight: 700;
}

.form-input-radio-label{
    font-size: 14px;
    line-height: 16px;
    color: #221f20;
    cursor: pointer;
    position: relative;
    padding-left: 10px;
    padding-right: 20px;
}

.form-radio input:checked ~ .form-input-radio-label{
    font-weight: 700;
}

.taikhoan-noidung-button-caidat{
    display: flex;
    align-items: center;
}

.button{
    font-size: 16px;
    line-height: 24px;
    text-align: center;
    text-transform: uppercase;
    text-decoration: none;
    border: none;
    color: white;
    padding: 16px 32px;
    display: inline-block;
    margin: 4px 0;
    transition-duration: 0.15s;
    cursor: pointer;
}

.button-update{
    background-color: black; 
    color: white; 
    border: 1px solid transparent;
    border-radius: 16px 0px;
    margin-right: 16px;
}

.button-update:hover{
    background-color: white; 
    color: black; 
    border: 1px solid black;
}

.button-password{
    background-color: white; 
    color: black; 
    border: 1px solid black;
    border-radius: 16px 0px;
}

.button-password:hover{
    background-color: black; 
    color: white; 
    border: 1px solid transparent;
}

.taikhoan-thongtin-noidung-row-2{
    position: relative;
    padding: 0.75rem 0;
    padding-left: 1rem;
    flex: 0 0 41.666667%;
    max-width: 41.666667%;
}

.taikhoan-thongtin-bang td {
    text-align: center;
}

.taikhoan-danhmuc-tieude h2 {
    font-weight: 600;
    font-size: 24px;
    line-height: 32px;
    text-transform: uppercase;
    color: #221f20;
    display: flex;
    align-items: center;
}

.taikhoan-quanlydonhang-tieude h2 {
    font-weight: 600;
    font-size: 24px;
    line-height: 32px;
    text-transform: uppercase;
    color: #221f20;
    display: flex;
    align-items: center;
}

.taikhoan-quanlytaikhoan-tieude h2 {
    font-weight: 600;
    font-size: 24px;
    line-height: 32px;
    text-transform: uppercase;
    color: #221f20;
    display: flex;
    align-items: center;
}

.taikhoan-quanlysanpham-tieude h2 {
    font-weight: 600;
    font-size: 24px;
    line-height: 32px;
    text-transform: uppercase;
    color: #221f20;
    display: flex;
    align-items: center;
}

.taikhoan-danhmuc-noidung1 table {
    width: 100%;
    border-collapse: collapse;
}

.taikhoan-danhmuc-noidung1 th, .taikhoan-danhmuc-noidung1 td {
    padding: 30px;
    text-align: left;
    border: 1px solid #ddd;
}
.taikhoan-danhmuc-noidung1 tr {
    margin-bottom: 50px; /* Điều chỉnh giá trị này để thay đổi khoảng cách giữa các hàng */
}

.taikhoan-danhmuc-noidung1 .btn-sua,
.taikhoan-danhmuc-noidung1 .btn-xoa {
    padding: 10px 20px;       
}
.taikhoan-danhmuc-noidung1 img {
    width: 100px; /* Đặt chiều rộng ảnh là 100px */
    height: auto; /* Tự động tính chiều cao để giữ tỷ lệ khung hình */
}

.taikhoan-quanlydonhang-noidung1 table {
    width: 100%;
    border-collapse: collapse;
}

.taikhoan-quanlydonhang-noidung1 th, .taikhoan-quanlydonhang-noidung1 td {
    padding: 23px;
    text-align: left;
    border: 1px solid #ddd;
}
.taikhoan-quanlydonhang-noidung1 tr {
    margin-bottom: 50px; /* Điều chỉnh giá trị này để thay đổi khoảng cách giữa các hàng */
}

.taikhoan-quanlydonhang-noidung1 td{
    width: 140px; /* Đặt chiều rộng cho cột "MÃ ĐƠN HÀNG" */
}

.taikhoan-quanlydonhang-noidung1 td:first-child {
    width: 120px; /* Đặt chiều rộng cho cột "MÃ ĐƠN HÀNG" */
}

.taikhoan-quanlydonhang-noidung1 .btn-xem-chi-tiet {
    padding: 5px 7px; 
    margin-bottom: 10px;      
}
.taikhoan-quanlydonhang-noidung1 .btn-xac-nhan {
    padding: 5px 9px; 
    margin-bottom: 10px;      
}

.taikhoan-quanlydonhang-noidung1 .btn-huy {
    padding: 5px 30px;       
}

.taikhoan-quanlytaikhoan-noidung1 table {
    width: 100%;
    border-collapse: collapse;
}

.taikhoan-quanlytaikhoan-noidung1 th, .taikhoan-quanlydonhang-noidung1 td {
    padding: 23px;
    text-align: left;
    border: 1px solid #ddd;
}
.taikhoan-quanlytaikhoan-noidung1 tr {
    margin-bottom: 50px; /* Điều chỉnh giá trị này để thay đổi khoảng cách giữa các hàng */
}

.taikhoan-quanlytaikhoan-noidung1 td{
    width: 140px; /* Đặt chiều rộng cho cột "MÃ ĐƠN HÀNG" */
}

.taikhoan-quanlytaikhoan-noidung1 td:first-child {
    width: 120px; /* Đặt chiều rộng cho cột "MÃ ĐƠN HÀNG" */
}

.taikhoan-quanlytaikhoan-noidung1 .btn-sua{
    padding: 10px 25px;
    margin-bottom: 10px;
}
.taikhoan-quanlytaikhoan-noidung1 .btn-xoa {
    padding: 10px 25.8px;       
}

.taikhoan-quanlysanpham-noidung1 table {
    width: 100%;
    border-collapse: collapse;
}

.taikhoan-quanlysanpham-noidung1 th, .taikhoan-quanlysanpham-noidung1 td {
    padding: 23px;
    text-align: left;
    border: 1px solid #ddd;
}
.taikhoan-quanlysanpham-noidung1 tr {
    margin-bottom: 50px; /* Điều chỉnh giá trị này để thay đổi khoảng cách giữa các hàng */
}

.taikhoan-quanlysanpham-noidung1 td{
    width: 150px; /* Đặt chiều rộng cho cột "MÃ ĐƠN HÀNG" */
}

.taikhoan-quanlysanpham-noidung1 td:first-child {
    width: 120px; /* Đặt chiều rộng cho cột "MÃ ĐƠN HÀNG" */
}

.taikhoan-quanlysanpham-noidung1 .btn-sua{
    padding: 10px 25px;
    margin-bottom: 10px;
}
.taikhoan-quanlysanpham-noidung1 .btn-xoa {
    padding: 10px 25.8px;       
}
    .taikhoan-danhmuc {
      display: none; 
    }
    .taikhoan-quanlydonhang {
      display: none; 
    }
    .taikhoan-quanlytaikhoan{
      display: none; 
    }
    .taikhoan-quanlysanpham{
      display: none; 
    }  
    .taikhoan-caidat-menu-luachon li:hover {
        background-color: #f0f0f0; 
        cursor: pointer; 
    }
    .taikhoan-caidat-menu-luachon li:hover span.fa {
        color: #000000;
    }
    .taikhoan-caidat-menu-user-avatar:hover .taikhoan-caidat-menu-user-name:hover {
        background-color: #f0f0f0;
        cursor: pointer;
    }
    .taikhoan-caidat-menu-user:hover .taikhoan-caidat-menu-user-name p {
        color: #000000;
    }
    .popup {
    display: none;
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.5);
}

.popup-content {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    background-color: #fff;
    padding: 20px;
    border-radius: 5px;
    text-align: center; /* Thêm thuộc tính text-align để căn giữa nội dung */
}
button {
    padding: 10px 25px; /* Tùy chỉnh kích thước của nút */
    font-size: 16px; /* Tùy chỉnh kích thước chữ của nút */
}

.close {
    position: absolute;
    top: 10px;
    right: 10px;
    font-size: 20px;
    cursor: pointer;
}
  </style>
    </head>
    <body>
        <main class="container-thongtin">
    <div class="dieuhuong">
        <ul class="dieuhuong-danhsach">
            <li class="dieuhuong-noidung"><a href="https://storeclothes.projectname.click">Trang chủ</a></li>
            <li class="dieuhuong-noidung"><a href="/admin">Admin</a></li>
        </ul>
    </div>
    <div class="taikhoan-wrapper">
        <div class="taikhoan-wrapper-row">
            <div class="taikhoan-caidat">
                <div class="taikhoan-caidat-menu duong-vien">
                    <div class="taikhoan-caidat-menu-user">
                        <div class="taikhoan-caidat-menu-user-avatar"><img src="https://pubcdn.ivymoda.com/ivy2//images/v2/assets/user-avatar-placeholder.png" alt=""></div>
                        <div class="taikhoan-caidat-menu-user-name"><p>${kh.getTenkhachhang()}</p></div>
                    </div>
                    <div class="taikhoan-caidat-menu-luachon">
                        <ul>
                            <li>
                                <span class="fa fa-folder"></span>
                                Quản Lý Danh Mục
                            </li>
                            <li>
                                <span class="fa fa-shopping-cart"></span>
                                Quản Lý Đơn Hàng
                            </li>
                            <li>
                                <span class="fa fa-users"></span>
                                Quản Lý Tài Khoản
                            </li>
                            <li>
                                <span class="fa fa-cogs"></span>
                                Quản Lý Sản Phẩm
                            </li>
                            <a href="logout">
                            <li>
                                <span class="fa fa-sign-out"></span>
                                Đăng Xuất
                            </li>
                            </a>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="taikhoan-thongtin">
                    <div class="taikhoan-thongtin-tieude"><h2>TÀI KHOẢN CỦA TÔI</h2></div>
                    <div class="taikhoan-thongtin-noidung">
                       <!-- <p class="taikhoan-thongtin-noidung-canhbao">"Vì chính sách an toàn thẻ, bạn không thể thay đổi SĐT, Ngày sinh, Họ tên. Vui lòng liên hệ CSKH 0905898683 để được hỗ trợ"</p>-->
                        <div class="taikhoan-thongtin-noidung-rows">
                            <div class="taikhoan-thongtin-noidung-row-1">
                                <form action="users" METHOD="POST">
                                    <div class="row-form-noidung">
                                        <div class="col-label">
                                            <label>Họ Tên</label>
                                        </div>
                                        <div class="col-input">
                                            <input class="form-input" name="ten" value="${kh.getTenkhachhang()}" type="text">
                                        </div>
                                    </div>
                                    <div class="row-form-noidung">
                                        <div class="col-label">
                                            <label>Địa chỉ</label>
                                        </div>
                                        <div class="col-input">
                                            <input class="form-input" name="diaChi" value="${kh.getDiaChi()}" type="text">
                                        </div>
                                    </div>
                                    <div class="row-form-noidung">
                                        <div class="col-label">
                                            <label>Số điện thoại</label>
                                        </div>
                                        <div class="col-input">
                                            <input class="form-input" name="sdtKH" value="${kh.getSdtkhachhang()}" type="text" id="khachhang_sdt" disabled>
                                        </div>
                                    </div>
                                    <div class="row-form-noidung">
                                        <div class="col-label">
                                            <label>Email</label>
                                        </div>
                                        <div class="col-input">
                                            <input class="form-input" name="emailKH" value="${kh.getEmail()}" type="text" id="khachhang_email" name="customer_email">
                                        </div>
                                    </div>
                                    <div class="row-form-noidung-radio">
                                        <div class="col-label">
                                            <label for="gioiTinh">Giới tính</label>
                                        </div>
                                        <div class="col-input">
                                            <input class="form-input" name="gioiTinh" value="${kh.getGioiTinh()}" type="text" id="khachhang_gioitinh" name="customer_gioiTinh">
                                        </div>
                                    </div>

                                <!--    <div class="row-form-noidung-radio">
                                        <div class="col-label">
                                            <label>Ngày sinh</label>
                                        </div>
                                        <div class="col-input">
                                            <div class="ngaysinh-row">
                                                <input class="form-input" name="ngay_sinh" value="DD/MM/YYYY" type="text">
                                            </div>
                                        </div>
                                    </div> -->
                                    <input type="hidden" value="update_info" name="action">
                                    <div class="row-form-noidung-radio">
                                        <div class="col-input taikhoan-noidung-button-caidat">
                                            <button class="button button-update">Cập nhật</button>
                                            <button class="button button-password"><a href="changepassword">Đổi Mật Khẩu</a></button>
                                        </div>
                                    </div>
                                </form>         
                            </div>
                        </div>
                    </div>
                </div>
            <div class="taikhoan-danhmuc">
                <div class="taikhoan-danhmuc-tieude" style="margin-bottom:50px;"><h2>
                    <span>DANH MỤC SẢN PHẨM</span>
                    <a href="themdanhmucsanpham.jsp" style="margin-left: 300px;">ADD</a>
                </h2></div>
                <div class="taikhoan-danhmuc-noidung">
                    <div class="taikhoan-danhmuc-noidung1">
                        <table>
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Tên Danh Mục</th>
                                    <th>Thể loại</th>
                                    <th>Hành Động</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${dmsp}" var="o" varStatus="loop">
                                    <tr>
                                        <td>${o.getIdDanhMucSanPham()}</td>
                                        <td>${o.getTenLoaiSanPham()}</td>
                                        <td>${o.getTheloai()}</td>
                                        <td>
                                            <button><a  href="update?sidDanhMucSanPham=${o.idDanhMucSanPham}">Sửa</a></button>
                                            <button> <a  href="DeleteDanhMucSanPham?sidDanhMucSanPham=${o.idDanhMucSanPham}">Xóa</a></button>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>  
                </div>
            </div>
            <div class="taikhoan-quanlydonhang">
                <div class="taikhoan-quanlydonhang-tieude" style="margin-bottom:50px;"><h2>QUẢN LÝ ĐƠN HÀNG</h2></div>
                <div class="taikhoan-quanlydonhang-noidung">
                    <div class="taikhoan-quanlydonhang-noidung1">
                        <table>
                            <thead>
                                <tr>
                                    <th>STT</th>
                                    <th>NGƯỜI MUA</th>
                                    <th>NGÀY</th>
                                    <th>TỔNG TIỀN</th>
                                    <th>TRẠNG THÁI</th>
                                </tr>
                            </thead>
                            <tbody>
                                <!-- Thêm các hàng dữ liệu vào đây -->
                                <c:forEach items="${dshd}" var="o" varStatus="loop">
                                    <tr>
                                        <td>${loop.index+1}</td>
                                        <td>${o.getSoDienThoaiKH()}</td>
                                        <td>${o.getNgayBan()}</td>
                                        <td>${o.getThanhTien()}</td>
                                        <td>
                                            <button class="btn-xem-chi-tiet"><a href="/chitietdonhang.html">Xem Chi Tiết</a></button>
                                            <button class="btn-xac-nhan">Xác Nhận</button>
                                            <button class="btn-huy">Hủy</button>
                                        </td>
                                    </tr>
                                </c:forEach>
                                
                            
                                <!-- Thêm các hàng dữ liệu khác nếu cần -->
                            </tbody>
                        </table>
                    </div>                    
                </div>  
            </div>
            <div class="taikhoan-quanlytaikhoan">
                <div class="taikhoan-quanlytaikhoan-tieude" style="margin-bottom:50px;"><h2>QUẢN LÝ TÀI KHOẢN</h2></div>
                <div class="taikhoan-quanlytaikhoan-noidung">
                    <div class="taikhoan-quanlytaikhoan-noidung1">
                        <table>
                            <thead>
                                <tr>
                                    <th>STT</th>
                                    <th>Tên Tài Khoản</th>
                                    <th>Chức Vụ</th>
                                    <th>Hành Động</th> <!-- Cột mới -->
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${acc}" var="o" varStatus="loop">
                                    <tr>
                                        <td>${loop.index + 1}</td>
                                        <td>${o.getUsename()}</td>
                                        <td>${o.getChucVu()}</td>
                                        <td>
                                            <div class="popup" id="popup">
                                                <div class="popup-content">
                                                    <span class="close" onclick="closePopup()">&times;</span>
                                                    <h2 style="margin-bottom: 10px;">Sửa Thông Tin</h2>
                                                    <form id="editForm">
                                                        <label for="role">Chọn quyền:</label>
                                                        <select id="role" name="role">
                                                            <option value="nv">Nhân Viên</option>
                                                            <option value="kh">Khách Hàng</option>
                                                        </select>
                                                        <button type="button" onclick="updateRole()">Sửa</button>
                                                        <button type="button" onclick="closePopup()">Hủy</button>
                                                    </form>
                                                </div>
                                            </div> 
                                            <!-- Nút Sửa -->
                                            <button onclick="openPopup()">Sửa</button>
                                            <button class="btn-xoa" style="margin-top: 10px;">Xóa</button>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    
                </div>    
            </div>
            <div class="taikhoan-quanlysanpham">
                <div class="taikhoan-quanlysanpham-tieude" style="margin-bottom:50px;"><h2>
                        <span>QUẢN LÝ SẢN PHẨM</span>
                    <a href="themsanpham.jsp" style="margin-left: 550px;">ADD</a></h2></div>
                <div class="taikhoan-quanlysanpham-noidung">
                    <div class="taikhoan-quanlysanpham-noidung1">
                        <table>
                            <thead>
                                <tr>
                                    <th>STT</th>
                                    <th>Tên sản phẩm</th>
                                    <th>Giá</th>
                                    <th>Hình ảnh</th>
                                    <th>Hành Động</th> <!-- Cột mới -->
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${sp}" var="o" varStatus="loop">
                                    <tr>
                                        <td>${loop.index + 1}</td>
                                        <td>${o.getTitle()}</td>
                                        <td>${o.getGiaBan()}</td>
                                        <td><img src="${o.getImg()}" alt="Hình Ảnh 1"></td>
                                        <td>
                                            <button class="btn-sua"><a  href="/suasanpham.html">Sửa</a></button>
                                            <button class="btn-xoa">Xóa</button>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
</main>
<script>
    function openPopup() {
    var popup = document.getElementById("popup");
    popup.style.display = "block";
}

function closePopup() {
    var popup = document.getElementById("popup");
    popup.style.display = "none";
}

function updateRole() {
    var selectedRole = document.getElementById("role").value;
    // Thực hiện logic cập nhật quyền ở đây
    console.log("Quyền đã được sửa thành: " + selectedRole);
    closePopup(); // Đóng popup sau khi sửa
}

    document.addEventListener("DOMContentLoaded", function () {
      // Lấy phần tử liên kết
      var xinChaoAdminElement = document.querySelector('.taikhoan-caidat-menu-user');
      var lichSuLink = document.querySelector('.taikhoan-caidat-menu-luachon li:nth-child(1)');
  
      // Lấy phần "LỊCH SỬ ĐĂNG NHẬP"
      var danhMucSection = document.querySelector('.taikhoan-danhmuc');
  
      // Lấy phần "TÀI KHOẢN ADMIN"
      var taiKhoanAdminSection = document.querySelector('.taikhoan-thongtin');
  
      // Lấy phần "QUẢN LÝ ĐƠN HÀNG"
      var quanLyDonHangSection = document.querySelector('.taikhoan-quanlydonhang');
  
      // Lấy phần "QUẢN LÝ TÀI KHOẢN"
      var quanLyTaiKhoanSection = document.querySelector('.taikhoan-quanlytaikhoan');
  
      // Lấy phần "QUẢN LÝ SẢN PHẨM"
      var quanLySanPhamSection = document.querySelector('.taikhoan-quanlysanpham');
      var taiKhoanAdminVisible = false;
      xinChaoAdminElement.addEventListener('click', function () {
        // Chuyển đổi trạng thái hiển thị
        taiKhoanAdminVisible = !taiKhoanAdminVisible;

        // Ẩn/Hiện phần "TÀI KHOẢN ADMIN" tùy thuộc vào trạng thái
        taiKhoanAdminSection.style.display = 'block';
        danhMucSection.style.display = 'none';
        quanLyDonHangSection.style.display = 'none';
        quanLyTaiKhoanSection.style.display = 'none';
        quanLySanPhamSection.style.display = 'none';
      });
      // Thêm nghe sự kiện click cho liên kết "LỊCH SỬ ĐĂNG NHẬP"
      lichSuLink.addEventListener('click', function () {
        // Ẩn/Hiện các phần tương ứng
        danhMucSection.style.display = 'block';
        taiKhoanAdminSection.style.display = 'none';
        quanLyDonHangSection.style.display = 'none';
        quanLyTaiKhoanSection.style.display = 'none';
        quanLySanPhamSection.style.display = 'none';
      });
  
      // Thêm nghe sự kiện click cho liên kết "TÀI KHOẢN ADMIN"
      document.querySelector('.taikhoan-caidat-menu-luachon li:nth-child(2)').addEventListener('click', function () {
        // Ẩn/Hiện các phần tương ứng
        danhMucSection.style.display = 'none';
        taiKhoanAdminSection.style.display = 'none';
        quanLyDonHangSection.style.display = 'block';
        quanLyTaiKhoanSection.style.display = 'none';
        quanLySanPhamSection.style.display = 'none';
      });
  
      // Thêm nghe sự kiện click cho liên kết "QUẢN LÝ ĐƠN HÀNG"
      document.querySelector('.taikhoan-caidat-menu-luachon li:nth-child(3)').addEventListener('click', function () {
        // Ẩn/Hiện các phần tương ứng
        danhMucSection.style.display = 'none';
        taiKhoanAdminSection.style.display = 'none';
        quanLyDonHangSection.style.display = 'none';
        quanLyTaiKhoanSection.style.display = 'block';
        quanLySanPhamSection.style.display = 'none';
      });
  
      // Thêm nghe sự kiện click cho liên kết "QUẢN LÝ TÀI KHOẢN"
      document.querySelector('.taikhoan-caidat-menu-luachon li:nth-child(4)').addEventListener('click', function () {
        // Ẩn/Hiện các phần tương ứng
        danhMucSection.style.display = 'none';
        taiKhoanAdminSection.style.display = 'none';
        quanLyDonHangSection.style.display = 'none';
        quanLyTaiKhoanSection.style.display = 'none';
        quanLySanPhamSection.style.display = 'block';
      });
  
      // Thêm nghe sự kiện click cho liên kết "QUẢN LÝ SẢN PHẨM"
    });
  </script>
    </body>
</html>
