

<%@page import="entity.sanpham"%>
<%@page import="dao.DAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Giỏ Hàng</title>
        <script src="https://kit.fontawesome.com/1147679ae7.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="./GIO_HANG.css">
        <style>*{
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
    flex:2;
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
#Slider{
    padding-bottom: 30px;
    border-bottom: 2px solid #000;
    overflow: hidden;
}
.orthers > li:first-child input{
    padding: 8px 8px 15px 35px;
    width: 100%;
    border: 1px solid #E7E8E9;
    background-color: rgba(255, 2555, 255,0.9);
    border-radius: 4px;
    height: 40px;
    font-weight: bold;


}
.orthers > li:first-child i{
    padding: 8px 8px 5px 5px;
    position: absolute;
    left: 10px ;
}
.orthers > li:not(:first-child) {
    padding: 12px 12px 0px 0px;
}

.aspect-ratio-169 {
    display: block;
    position: relative;
    padding-top: 56.25%;
}

.aspect-ratio-169 img  {
    display: block;
    position: absolute;
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
}
.dot-container{
    position: absolute;
    height: 50px;
    width: 100%;
    display: flex;
    align-items: center;
    justify-content: center;
}
.dot{
    height: 18px;
    width: 18px;
    background-color: #ccc;
    border-radius: 50%;
    margin-left: 12px;
    cursor: pointer;
}
.dot.active{
    background-color: #333;
}
/* --------------app----------------- */
.app-container{
    text-align: center;
    align-items: center;
    padding: 150px 0px 50px 0;

}
.app-google{
    margin: 50px;
}
.app-google p{
    margin: 50px;
    line-height: 20px;
    letter-spacing: 1px;
    font-size: 17px;
    color: #000;
    font-weight: bold;
    text-align: center;
}
.app-google img{
    height: 50px;
    cursor: pointer;
}
.app-container p{
    line-height: 20px;
    letter-spacing: 1px;
    font-size: 17px;
    color: #000;
    font-weight: bold;
    text-align: center;
}
.email-container{
    display: flex;
    justify-content: center;
}
.imp-email{
    margin-top: 50px;
    border: none;
    border-bottom: 1px solid #000;
    padding-bottom: 20px;
    width: 400px;
    text-align: center;
    outline: none;
}
.send-email{
    align-items: center;
    width: 60px;
    height: 40px;
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
.cart
{
    padding: 100px 0;
}
.cart-top-wrap
{
    display: flex;
    justify-content: center;
    align-items: center;
}
.cart-top
{
    height: 2px;
    width: 70%;
    background: #dddddd;
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin: 50px 0 100px;
}
.cart-top-item
{
    width: 40px;
    height: 40px;
    border-radius: 50%;
    border: 1px solid #dddddd;
    display: flex;
    align-items: center;
    justify-content: center;
    background: #fff;
}
.cart-top-item i
{
    color: #dddddd;
}
.cart-top-cart
{
    border: 1px solid #0DB7EA;
}
.cart-top-cart i
{
    color: #0DB7EA;
}
.cart-content-left
{
    padding-right: 12px;
}
.cart-content-left table
{
    width: 60%;
    text-align: center;
    float: left;
}
.cart-content-left table th
{
    padding-bottom: 30px;
    font-family: "Times New Roman";
    font-size: 12px;
    text-transform: uppercase;
    color: #333;
    border-collapse: collapse;
    border-bottom: 2px solid #dddddd;
}
.cart-content-left table p{
    font-family: "Times New Roman";
    font-size: 16px;
    color: #333333;
}
.cart-content-left table input
{
    width: 30px;
}
.cart-content-left table span
{
    display: block;
    width: 20px;
    height: 20px;
    border: 1px solid #dddddd;
    cursor: pointer;
}
.cart-content-left table td{
    padding: 20px 0;
    border-bottom: 2px solid #dddddd;
}
.cart-content-left td:first-child img
{
    width: 130px;
}
.cart-content-left td:nth-child(2)
{
    max-width: 130px;
}
.cart-content-left td:nth-child(3) img
{
    width: 60px;
}
.cart-content-right
{
    padding-left: 14px;
    border-left: 2px solid #dddddd;
}
.cart-content-right table
{
    width: 30%;
    float: right;
}
.cart-content-right table th
{
    padding-bottom: 30px;
    font-family: "Times New Roman";
    font-size: 14px;
    color: #333333;
    border-collapse: collapse;
    border-bottom: 2px solid #dddddd;
}
.cart-content-right table td{
    font-family: "Times New Roman";
    font-size:  14px;
    color: #333333;
    padding: 6px 0;
}
.cart-content-right tr:nth-child(4) td{
    border-bottom: 2px solid#dddddd;
}
.cart-content-right tr td:last-child{
    text-align: right;
}
.cart-content-right-text
{
    margin: 20px 0;
    text-align: center;
    float: right;
}
.cart-content-right-text p{
    font-family:"Times New Roman";
    font-size: 14px;
    color: #333333;
    float: right;
}
.cart-content-right-button
{
    text-align: center;
    align-items: center;
    float:right;
}
.cart-content-right-button button
{
    padding: 0 18px;
    height: 35px;
    cursor: pointer;
}
.cart-content-right-button button:first-child
{
    background: #ffffff;
    border: 1px solid black;
    margin-right: 20px;
}
.cart-content-right-button button:first-child:hover
{
    background: #dddddd;
}
.cart-content-right-button button:last-child
{
    background: black;
    color: #ffffff;
    border: none;
    border: 1px solid black;
}
.cart-content-right-button button:last-child:hover
{
    background: #dddddd;
    color: black;
}
.cart-content-right-dangnhap
{
    margin-top:20px;
    text-align: right;
}
.cart-content-right-dangnhap p{
    font-family: "Times New Roman";
    font-size: 12px;
    color: #333333;
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
    <body>
        <section class="cart">
          <div class="container">
            <div class="cart-top-wrap">
              <div class="cart-top">
                <div class="car-top-cart cart-top-item">
                  <i class="fas fa-shopping-cart"></i>
                </div>
                <div class="cart-top-adress cart-top-item">
                  <i class="fas fa-map-market-alt"></i>
                </div>
                <div class="cart-top-payment cart-top-item">
                  <i class="fas fa-money-check-alt"></i>
                </div>
              </div>
            </div>
          </div>
          <div class="container">
            <div class="cart-content row">
              <div class="cart-content-left">
                <table>
                  <tr>
                    <th>Sản phẩm</th>
                    <th>Tên sản phẩm</th>
                    <th>Màu</th>
                    <th>Size</th>
                    <th>SL</th>
                    <th>Đơn giá</th>
                    <th>Xóa</th>
                  </tr>
                  <c:set var="tongTien" value="0" />
                  <c:set var="listMau" value="${requestScope.mau}" />
                  <c:set var="gioHang" value="${requestScope.gioHang}" />
                  <c:forEach var="o" items="${gioHang}" varStatus="loop" >
                    <tr>
                      <td><img src="${o.getImg()}" alt=""></td>
                      <td><p>${o.getTitle()}</p></td>
                      <td>${listMau.get(o.getIdMau() - 1).color}</td>
                      <td><p>${o.getSize()}</p></td>
                      <td>${o.getSoLuong()}</td>
                      <td>${o.getGiaBan()} Đ</td>
                      <td><a href="giohang?idGH=${o.getIdGH()}&action=delete">X</a></td>
                    </tr>
                    <c:set var="tongTien" value="${tongTien + o.getSoLuong()*o.getGiaBan()}" />
                  </c:forEach>
                </table>
              </div>
              <div class="cart-content-right">
                <table>
                  <tr>
                    <th colspan="2">TỔNG TIỀN GIỎ HÀNG</th>
                  </tr>
                  <tr>
                    <td>TỔNG SẢN PHẨM</td>
                    <td>${fn:length(gioHang)} </td>
                  </tr>
                  <tr>
                    <td>TỔNG TIỀN HÀNG</td>
                    <td><p> ${tongTien} Đ</p></td>
                  </tr>
                </table>
                <div class="cart-content-right-button">
                    <button><a href="https://storeclothes.projectname.click/">TIẾP TỤC MUA SẮM</a></button>
                  <div id="popup">
                               <p>Đã thanh toán giỏ hàng!</p>
                             </div>
                  <a href="thanhtoan?tongTien=${tongTien}"><button>THANH TOÁN</button></a>
                </div>
              </div>
            </div>
          </div>
          <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        </section>
        <!-- --------------footer------------------>
    </body>
</html>
        <!-- --------------app-container------------------>
        <section class="app-container">
          <div class="app-google">
            <p>Tải ứng dụng IVYmoda</p>
            <a href="https://apps.apple.com/app/id1430094474?fbclid=IwAR3xAzj-xTmtj35aQUB8KhTLk1zFgyw2zssisSyn9qkRA6w4fgt6kI7j8Q8"><img src="https://pubcdn.ivymoda.com/ivy2/images/appstore.png" alt=""></a>
            <a href="https://play.google.com/store/apps/details?id=com.ivymoda.app&fbclid=IwAR2Ki0MhC0MdCSEqmnP9BUNLhKg7ZresCBqA8BfRkPBBswJ99-YNqOX4cL8&pli=1"><img src="https://pubcdn.ivymoda.com/ivy2/images/googleplay.png" alt=""></a>
          </div>
          <p>Nhận bản tin Ivymoda</p>
          <div class="email-container">
            <form action="action">
              <input class="imp-email" type="text" placeholder="Nhập email của bạn" >
              <input class="send-email" type="submit" name="sub-email">
            </form>
          </div>
        </section>
        <!-- --------------footer------------------>
        <%@include file="footer.jsp" %>

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
