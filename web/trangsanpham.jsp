
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trang Sản Phẩm</title>
        <script src="https://kit.fontawesome.com/1147679ae7.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="./trangsanpham.css">
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
header{
    width: 100%     ;
    display: flex;
    justify-content: space-between;
    padding: 12px 50px;
    height: 70px;
    align-items: center;
    position: fixed;
    top: 0;
    left: 0;
    z-index: 1;
    background: rgba(255, 2555, 255,0.7);
    transition: background-color 0.5s ease;
}
header .sticky{
    background-color: red;
}
header:hover{
    background: rgba(255, 2555, 255,1);
}
.logo{
    flex: 2;
    justify-content: center;
}
.menu{
    flex:4;
    display: flex;
}
.menu li{
    margin: 0px 12px 0px 0px;
    padding: 15px 4px;
    position: relative;
}
.menu > li:hover .sub-menu{
    display: block;
}
.menu > li a{
    display: block;
    line-height: 20px;
    font-weight: bold;
}
.sub-menu ul{
    padding-left: 20px;
}
.sub-menu{
    display: none;
    line-height: 5px;
    position: absolute;
    width: 200px;
    border: 1px solid #ccc;
    padding: 10px 0 10px 20px;
    z-index: 1;
    background: #fff;
}
.sub-menu > li a{
    font-weight: normal;
}
.orthers{
    flex:2;
    display: flex;
}
.orthers > li{
    padding: 0px 12px;
}
.orthers > li:first-child{
    position: relative;
}
/* --------------------PRODUCT---------------------*/
.product 
{
    padding: 100px 0;
}
.product-top {
    margin-bottom: 20px;
}
.product-top p{
        font-family: var(--main-text-font);
        font-weight: bold;
        margin: 20px;
        font-size: 18px;
        display: inline;
}
.product-content-left {
    width: 40%;
    float:left;
}
.product-content-left-big-img {
    width: 100%;
    padding-right: 20px;
}
.product-content-left-big-img img{
    width: 90%;
    padding-left: 20px;
}
.product-content-right {
    width: 20%;  
    padding-left: 20px;
    float:left;
}
.product-content-right-small-img {
    width: 50%;
}
.product-content-right-product {
    width: 75%;
}
.product-content-right-small-img img{
    width: 100%;
}
.product-content-right-product-name h1{
    font-family: var(--main-text-font);
    font-size: 20px;
}
.product-content-right-product-name p{
    color: #fff;
    font-size: 12px;
}
.product-content-right-product-price{
    margin: 12px;
    font-size: 20px;
    font-weight: bold;
    font-family: var(--main-text-font);
}
.product-content-right-product-color img{
    width: 30px;
    height: 30px;
    border-radius: 50%;
}
.product-content-right-product-color-img {
    height: 40px;
    width: 40px;
    border: 1px solid #333;
    display: flex;
    align-items: center;
    justify-content: center;
    margin: 12px 0;
}
.right-right
{
    width: 40%;
    float:left;
}
.size option {
    display: inline-block;
    padding: 3px 6px;
    border: 1px solid #dddd;
    margin: 12px 10px;
    font-size: 12px;
    cursor: pointer;
}
.quantily {
    display: flex;
    margin-bottom: 20px;
}
.quantily input {
    width: 35px;
    padding-left: 3px;
}
.product-content-right-product-button button {
    width: 150px;
    height: 40px;
    display: block;
    margin: 20px 0 12px;
    transition: all 0.3s ease;
}
.product-content-right-product-button button:first-child{
    display: flex;
    justify-content: space-evenly;
    align-items: center;
    background-color: #fff;
    border: 2px solid black;
    cursor: pointer;
}
.product-content-right-product-button button:first-child:hover {
    background-color: black;
    color: aliceblue;
}
.product-content-right-product-button button:last-child{
    border: 2px solid black;
    color: black;
    background-color: #fff;
    cursor: pointer;
}
.product-content-right-product-icon{
    display: flex;
    padding-bottom: 20px;
}
.product-content-right-product-icon-item{
    display: flex;
    margin-right: 12px;
    justify-content: center;
    align-items: center;
}
.product-content-right-product-icon-item i{
    font-size: 12px;
    margin-right: 6px;
}
.product-content-right-bottom {
    padding-top: 40px;
    border-top: 1px solid #dddddd;
    position: relative;
}
.product-content-right-bottom-top {
    position: absolute;
    width: 30px;
    height: 30px;
    border: 1px, solid #dddddd;
    display: flex;
    justify-content: center;
    align-items: center;
    background-color: #fff;
    top: -15px;
    left: 50%;
    transform: translateX(-50%);
}
.product-content-right-bottom-content-title{
    border-bottom: 2px solid #fff;
    display: inline;
}
.product-content-right-bottom-content-title-item p{
    padding: 6px;
    cursor: pointer;
}
.product-content-right-bottom-content {
    padding-top: 30px;
}
.product-content-right-bottom-content p{
    font-family: var(--main-text-font);
    font-size: 12px;
}
/* --------------footer----------------- */
footer{
    text-align: center;
}
.footer-top{
    display: flex;
    text-align: center;
    justify-content: center;
    align-items: center;
    margin-bottom: 20px;
    height: 70px;
}
.footer-top img{
    height: 50px;
}
.footer-top li{
    padding: 0 12px;
    position: relative;
}
.footer-top li::after{
    content: "";
    display: block;
    width: 1px;
    height: 30px;
    background: #ccc;
    position: absolute;
    right: 0;
    top: 50%;
    transform: translateY(-50%);
}
.footer-top li:last-child::after{
    display: none;
}
.footer-bottom{
    text-align: center;
    margin: 20px 0;
}
.footer-center{
    text-align: center;
}
#popup {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ccc;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            z-index: 9999;
        }
        </style>
    </head>
    
    <!--header-->
    <%@include file="header.jsp" %>
    <!--body-->
    <body>
    <!-------------------------product------------------------->
    <c:set var="o" value="${requestScope.detailP}" />
    <c:set var="list" value="${requestScope.listPimg}" />
    <c:set var="kichCo" value="${requestScope.kichCo}" />
    <c:set var="mau" value="${requestScope.mau}" />
    <form name="f" action="detail" method="post">
        <section class="product">
                <div class="container">
                    <!--    <div class="product-top">
                          <p>Trang chủ</p><span>&#10230;</span><p>Nữ</p><span>&#10230;</span><p>Hàng nữ mới về</p><span>&#10230;</span><p>${o.title}</p>
                        </div> -->
                     
                    <div class="product-content">
                        <div class="product-content-left">
                          <div class="product-content-left-big-img">
                            <img src="${o.img}" alt="">
                          </div>
                        </div>
                        <div class="product-content-right">
                            
                            
                            <div class="product-content-right-small-img">
                                <img src="${list.get(0).img}" alt="alt"/>
                                <img src="${list.get(1).img}" alt="alt"/>
                                <img src="${list.get(2).img}" alt="alt"/>
                            </div>
                        </div>
                        <div class="right-right">
                          <div class="product-content">
                            <div class="product-content-right-product-name">
                              <h1>${o.title}</h1>
                              <p>${o.idSanPham}</p>
                            </div>
                            <div class="product-content-right-product-price">
                              <p>${o.giaBan}<sup>đ</sup></p>
                            </div>
                            <div class="product-content-right-product-color">
                              <p><span style="font-weight: bold;">Màu sắc: </span>${mau.color}</p>
                            </div>
                            <div class="product-content-right-product-size">
                              <p style="font-weight: bold;">Size</p>
                              <select id="size" name="size">
                                <div class="size">
                                  <option value="S">S</option>
                                  <option value="M">M</option>
                                  <option value="L">L</option>
                                  <option value="XL">XL</option>
                                  <option value="XXL">XXL</option>
                                </div>
                               </select>
                            </div>
                            <div class="quantily">
                              <p style="font-weight: bold;">Số lượng: </p>
                              <input type="number" name="soLuong" min="0" value="1">
                            </div>
                            <input type="hidden" value="${o.idSanPham}" name="idSanPham">
                            <p style="color:red;">Vui lòng chọn size</p>
                            <div class="product-content-right-product-button">
                            <div id="popup">
                               <p>Sản phẩm đã được thêm vào giỏ hàng!</p>
                             </div>
                            <button onclick= buy("${o.idSanPham}")><i class="fas fa-shopping-cart"></i><p>MUA HÀNG</p></button>
                            </div>
                            <div class="product-content-right-product-icon">
                                <div class="product-content-right-product-icon-item">
                                    <i class="fas fa-phone-alt"></i><a href="tel:+84900000000">Hotline</a>
                                </div>
                                <div class="product-content-right-product-icon-item">
                                    <i class="fas fa-envelope"></i><a href="mailto:shop@gmail.com">Mail</a>
                                </div>
                            </div>
                            <div class="product-content-right-bottom">
                              <div class="product-content-right-bottom-top"></div>
                            </div>
                          </div>
                        </div>
                    </div>
                    
                </div>
      </section>
    </form>
</body>
<script>
    // your_script.js

// Hàm mua hàng và hiển thị popup
function buy(productId) {
    // Thực hiện các thao tác mua hàng ở đây (nếu cần)
    
    // Hiển thị popup
    showPopup();
}

// Hàm hiển thị popup
function showPopup() {
    document.getElementById("popup").style.display = "block";
}

// Hàm ẩn popup
function hidePopup() {
    document.getElementById("popup").style.display = "none";
}

// Gọi hàm hidePopup sau một khoảng thời gian (ví dụ: 3 giây)
setTimeout(hidePopup, 1000);

</script>
</html>
