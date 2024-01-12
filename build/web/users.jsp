<%@page import="entity.danhsachhoadon"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trang User</title>
        <script src="https://kit.fontawesome.com/1147679ae7.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" href="./users.css">
    </head>
    <style>
        .taikhoan-quanlydonhang {
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
    flex: 0 0 66.666667%;
    max-width: 66.666667%;
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
.row-form-noidung-radio {
    display: flex;
    align-items: center;
    margin-bottom: 10px; /* Adjust as needed */
}

.col-label {
    flex: 1;
}

.col-input {
    flex: 2;
}

.col-input select {
    width: 100%;
    padding: 8px;
    font-size: 16px;
    border: 1px solid #ccc;
    border-radius: 4px;
}

.col-input select:hover,
.col-input select:focus {
    border-color: #555;
}

.col-label label {
    font-weight: bold;
    margin-right: 10px; /* Adjust as needed */
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

.taikhoan-quanlydonhang-noidung1 .btn-xac-nhan {
    padding: 5px 9px; 
    margin-bottom: 10px;      
}

.taikhoan-quanlydonhang-noidung1 .btn-huy {
    padding: 5px 30px;       
}
    </style>
<body>
    <main class="container-thongtin">
        <div class="dieuhuong">
            <ul class="dieuhuong-danhsach">
                <li class="dieuhuong-noidung"><a href="https://storeclothes.projectname.click/">Trang chủ</a></li>
                <li class="dieuhuong-noidung"><a href="users">Tài khoản của tôi</a></li>
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
                                <li class="active">
                                    <span class="fa fa-user"></span>
                                    Thông tin tài khoản
                                </li>
                                <li>
                                    <span class="fa fa-shopping-cart"></span>
                                    Quản Lý Đơn Hàng
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

                                 <!--   <div class="row-form-noidung-radio">
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
                                            <button class="button button-update">Cập Nhật</button>
                                            <button class="button button-password"><a href="changepassword">Đổi Mật Khẩu</a></button>
                                        </div>
                                    </div>
                                </form>         
                            </div>
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
                                                    <th>NGÀY MUA</th>
                                                    <th>TỔNG TIỀN</th>
                                                    <th>TRẠNG THÁI</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <!-- Thêm các hàng dữ liệu vào đây -->
                                                <c:if test="${dshd.size() > 0}">
                                                    <c:forEach items="${dshd}" var="o" varStatus="loop">
                                                        <tr>
                                                            <td><a href="donhang?id=${o.getIdDSHD()}&action=detail">${loop.index + 1}</td>
                                                            <td>${o.getNgayBan()}</td>
                                                            <td>${o.getThanhTien()}</td>
                                                            <td>
                                                                <c:choose>
                                                                    <c:when test="${o.getXacNhan() == 1}">
                                                                        <button class="btn-xac-nhan" disabled>Đã Xác Nhận</button>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <button class="btn-huy" onclick="javascript:window.location='users?id=${o.getIdDSHD()}&action=delete'">Hủy</button>
                                                                    </c:otherwise>
                                                                </c:choose>
                                                            </td>

                                                        </tr>
                                                    </c:forEach>
                                                </c:if>
                                                
                                                <!-- Thêm các hàng dữ liệu khác nếu cần -->
                                            </tbody>
                                        </table>
                                    </div>                    
                                </div>  
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>                                                 
</body>
<script>
    document.addEventListener("DOMContentLoaded", function () {
        var lichSuLink = document.querySelector('.taikhoan-caidat-menu-luachon li:nth-child(1)');
        var taiKhoanAdminSection = document.querySelector('.taikhoan-thongtin');
        var quanLyDonHangSection = document.querySelector('.taikhoan-quanlydonhang');
        
        
        lichSuLink.addEventListener('click', function () {
            // Ẩn/Hiện các phần tương ứng
            taiKhoanAdminSection.style.display = 'block';
            quanLyDonHangSection.style.display = 'none';
        });
        document.querySelector('.taikhoan-caidat-menu-luachon li:nth-child(2)').addEventListener('click', function () {
        // Ẩn/Hiện các phần tương ứng
            taiKhoanAdminSection.style.display = 'none';
            quanLyDonHangSection.style.display = 'block';
      });
    });
</script>
</html>
