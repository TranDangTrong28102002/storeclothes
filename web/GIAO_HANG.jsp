

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://kit.fontawesome.com/1147679ae7.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="./GIAO_HANG.css">
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

.thanhtoan
{
    padding: 100px 0;
}
.thanhtoan-top-wrap
{
    display: flex;
    justify-content: center;
    align-items: center;
}
.thanhtoan-top
{
    height: 2px;
    width: 70%;
    background-color: #dddddd;
    display: flex ;
    justify-content: space-between;
    align-items: center;
    margin: 50px 0 100px;
}
.thanhtoan-top-item
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
.thanhtoan-top-item i{
    color: #dddddd;
}
.thanhtoan-top-adress
{
    border: 1px solid #0DB7EA ;
}
.thanhtoan-top-adress i{
    color: #0DB7EA;
}
.thanhtoan-content-left
{
    width: 60%;
    padding-right: 16px;
    float: left;
}
.thanhtoan-content-left p{
    font-family: "Times New Roman";
    font-size: 16px;
}
.thanhtoan-content-left label{
    font-family: "Times New Roman";
    font-size: 16px;
    margin-bottom: 6px;
    display: block;

}
.thanhtoan-content-left> p{
    font-weight: bold;
    font-size: 16px;
}
.thanhtoan-content-left-dangnhap
{
    margin-top: 16px;
}
.thanhtoan-content-left-dangnhap i{
    font-size: 16px;
    margin-right: 16px;
}
.thanhtoan-content-left-khachle
{
    margin: 16px 0;
}
.thanhtoan-content-left-khachle input
{
    margin-right: 16px;
}
.thanhtoan-content-left-dangky
{
    margin-bottom: 34px;
}
.thanhtoan-content-left-dangky input
{
    margin-right: 16px;
}
.thanhtoan-content-left-input-top
{
    justify-content: space-between;
}
.thanhtoan-content-left-input-top-item
{
    width: calc(50%- 20px);
}
.thanhtoan-content-left-input-top-item input
{
    width: 90%;
    height: 35px;
    border: 1px solid #dddddd;
    padding-left: 10px;
}
.thanhtoan-content-left-button p{
    display: inline-block;
    font-family: "Times New Roman";
    font-size: 16px;
}
.thanhtoan-content-left-button span{
    margin-right: 16px;
}
.thanhtoan-content-left-button
{
    justify-content: space-between;
    padding-top: 20px;
}
.thanhtoan-content-left-button button
{
    height: 35px;
    border: 2px solid black;
    padding: 6px 12px;
    cursor: pointer;
    transition: all 0.3s ease;
}
.thanhtoan-content-left-button button:hover
{
    background-color: black;
    color: #ffffff;
}
.thanhtoan-content-right
{
    width: 40%;
    padding-left: 12px;
    border-left: 2px solid #dddddd;
    height: auto;
    float: right;
}
.thanhtoan-content-right table{
    width: 100%;
    font-family: "Times New Roman";
    font-size: 16px;
    text-align: center;
}
.thanhtoan-content-right table tr th:first-child
{
    text-align: left;
}
.thanhtoan-content-right table tr th{
    padding-bottom: 16px;
    border-bottom: 2px solid #dddddd;
}
.thanhtoan-content-right tablt tr th:last-child
{
    text-align: right;
}
.thanhtoan-content-right table tr td{
    padding: 6px 0;
}
.thanhtoan-content-right table tr:nth-child(4)
{
    border-top: 2px solid #dddddd;
}
.thanhtoan-content-right table tr td:last-child
{
    text-align: right;
}
.thanhtoan-content-right table tr td:first-child
{
    text-align: left;
}

</style>
    </head>
    <body>
        <!-- --------------thanhtoan------------------>
        <section class="thanhtoan">
          <div class="container">
            <div class="thanhtoan-top-wrap">
              <div class="thanhtoan-top">
                <div class="thanhtoan-top-thanhtoan thanhtoan-top-item">
                  <i class="fas fa-shopping-thanhtoan"></i>
                </div>
                <div class="thanhtoan-top-adress thanhtoan-top-item">
                  <i class="fas fa-map-market-alt"></i>
                </div>
                <div class="thanhtoan-top-payment thanhtoan-top-item">
                  <i class="fas fa-money-check-alt"></i>
                </div>
              </div>
            </div>
          </div>
          <div class="container">
            <div class="thanhtoan-content">
              <div class="thanhtoan-content-left">
                <p>Vui lòng chọn địa chỉ giao hàng</p>
                <div class="thanhtoan-content-left-dangnhap row">
                  <i class="fas fa-sign-in-alt"></i>
                  <p style="font-size: 16px">Đăng nhập (Nếu bạn đã có tài khoản của IVY)</p>
                </div>
                <div class="thanhtoan-content-left-khachle row">
                  <input checked name="loaikhach" type="radio">
                  <p style="font-size: 16px"><span style="font-weight:bold;">Khách lẻ</span>(Nếu bạn không lưu lại thông tin)</p>
                </div>
                <div class="thanhtoan-content-left-dangky row">
                  <input type="radio" name="loaikhach">
                  <p style="font-size: 16px"><span style="font-weight:bold;">Đăng ký</span>(Tạo tài khoản mới với thông tin bên dưới)</p>
                </div>
                <div class="thanhtoan-content-left-input-top row">
                  <div class="thanhtoan-content-left-input-top-item">
                    <label for="">Họ tên <span style="color:red;">*</span></label>
                    <input type="text">
                  </div>
                  <div class="thanhtoan-content-left-input-top-item">
                    <label for="">Điện thoại <span style="color:red;">*</span></label>
                    <input type="text">
                  </div>
                  <div class="thanhtoan-content-left-input-top-item">
                    <label for="">Tỉnh/TP <span style="color:red;">*</span></label>
                    <input type="text">
                  </div>
                  <div class="thanhtoan-content-left-input-top-item">
                    <label for="">Quận/Huyện <span style="color:red;">*</span></label>
                    <input type="text">
                  </div>
                  <div class="thanhtoan-content-left-input-top-item">
                    <label for="">Địa chỉ <span style="color:red;">*</span></label>
                    <input type="text">
                  </div>
                </div>

                <div class="thanhtoan-content-left-input-bottom row">
                  <a href=""><span>&#171;</span><p>Quay lại giỏ hàng</p></a>
                  <button style="float:right; padding:14px"><p style="font-weight:bold">THANH TOÁN GIAO HÀNG</p></button>
                </div>
              </div>
              <div class="thanhtoan-content-right">
                <table>
                  <tr>
                    <th>Tên sản phẩm</th>
                    <th>Giảm giá</th>
                    <th>Số lượng</th>
                    <th>Thành tiền</th>
                  </tr>
                  <tr>
                    <td>Áo polo kẻ ngang MS 57E2940</td>
                    <td>-30%</td>
                    <td>1</td>
                    <td>590.000 <sup>đ</sup></td>
                  </tr>
                  <tr>
                    <td>Áo Nam kẻ ngang MS 57E2941</td>
                    <td>-20%</td>
                    <td>1</td>
                    <td>690.000 <sup>đ</sup></td>
                  </tr>
                  <tr>
                    <td style="font-weight:bold;" colspan="3">Tổng</td>
                    <td style="font-weight:bold;"><p>690.000 <sup>đ</sup></p></td>
                  </tr>
                  <tr>
                    <td style="font-weight:bold;" colspan="3">Thuế VAT</td>
                    <td style="font-weight:bold;"><p>69.000 <sup>đ</sup></p></td>
                  </tr>
                  <tr>
                    <td style="font-weight:bold;" colspan="3">Tổng tiền hàng</td>
                    <td style="font-weight:bold;"><p>759.000 <sup>đ</sup></p></td>
                  </tr>
                </table>
              </div>
            </div>
          </div>
          <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        </section>
<!-- --------------footer------------------>
    <%@include file="footer.jsp" %>
    </body>
</html>