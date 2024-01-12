

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://kit.fontawesome.com/1147679ae7.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="./thanhToan.css">
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
    color: #220529;
}
header{
    width: 100%     ;
    display: flex;
    justify-content: space-between;
    padding: 20px 50px;
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
    margin: 0px 20px 0px 0px;
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
    padding: 0px 20px;
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
    padding: 20px 20px 0px 0px;
}

.aspect-ratio-209 {
    display: block;
    position: relative;
    padding-top: 56.25%;
}

.aspect-ratio-209 img  {
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
    margin-left: 20px;
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
    padding: 0 20px;
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
.payment
{
    padding: 100px 0;
}
.payment-top-wrap
{
    display: flex;
    justify-content: center;
    align-items: center;
}
.payment-top
{
    height: 2px;
    width: 70%;
    background-color: #dddddd;
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin: 50px 0 100px;
}
.payment-top-item
{
    width: 40px;
    height: 40px;
    border-radius: 50%;
    border: 1px solid #dddddd;
    display: flex;
    align-items: center;
    justify-content: center;
    background-color: #ffffff;
}
.payment-top-item i{
    color: #dddddd;
}
.payment-top-payment
{
    border: 1px solid #0DB7EA;
}
.payment-top-payment i
{
    color: #0DB7EA;
}
.payment-content-left
{
    width: 60%;
}
.payment-content-right
{
    width: 40%;
    border-left: 2px solid #dddddd;
    padding-left: 20px;
    float: right;
}
.payment-content-left p,label
{
    font-size: 20px;
    font-family: "Times New Roman";
}
.payment-content-right-button
{
    display: flex;
    padding: 20px 0;
    border-bottom: 1px dashed #dddddd;
}
.payment-content-right-button input
{
    height: 30px;
    width: 200px;
    margin-right: 100px;
    padding-left: 20px;
}
.payment-content-right-button button
{
    height: 30px;
    width: 100px;
    background-color: black;
    color: white;
    border: none;
    cursor: pointer;
}
.payment-content-right-mnv
{
    margin-top: 20px;
}
.payment-content-right-mnv select
{
    height: 30px;
    width: 100%;
    color: #75758A;
    padding-left: 20px;
}
.payment-content-right-payment
{
    margin-top: 50px;
    align-items: center;
    text-align: center;
}
.payment-content-right-payment button
{
    height: 35px;
    padding: 0 20px;
    font-size: 20px;
    color: black;
    cursor: pointer;
    transition: all 0.3s ease;
    border: 2px solid black ;
}
.payment-content-right-payment button:hover
{
    background-color: black;
    color: #ffffff;
}

        </style>
    </head>
    <body>
        <!-- --------------thanhtoan------------------>
        <section class="payment">
          <div class="container">
            <div class="payment-top-wrap">
              <div class="payment-top">
                <div class="payment-top-delivery payment-top-item">
                  <i class="fas fa-shopping-cart"></i>
                </div>
                <div class="payment-top-adress payment-top-item">
                  <i class="fas fa-map-market-alt"></i>
                </div>
                <div class="payment-top-payment payment-top-item">
                  <i class="fas fa-money-check-alt"></i>
                </div>
              </div>
            </div>
          </div>
          <div class="container">
            <div class="payment-content row">
              <div class="payment-content-left">
                <div class="payment-content-left-method-delivery">
                  <p style="font-weight: bold;">Phương thức giao hàng</p>
                  <div class="payment-content-left-method-payment-item-img">
                    <img src="image/visa.png" alt="">
                  </div>
                  <div class="payment-content-left-method-delivery-item">
                    <input checked type="radio">
                    <label for="">Giao hàng chuyển phát nhanh</label>
                  </div>
                  <div class="payment-content-left-method-payment-item-img">
                    <img src="image/visa.png" alt="">
                  </div>
                  <div class="payment-content-left-method-payment">
                    <p style="font-weight: bold;">Phương thức thanh toán</p>
                    <p style="color:red;">Mọi giao dịch đều được bảo mật và mã hóa. Thông tin thẻ tín dụng sẽ khongo bao giờ được lưu lại.</p>
                    <div class="payment-content-left-method-payment-item-img">
                      <img src="image/visa.png" alt="">
                    </div>
                    <div class="payment-content-left-method-payment-item">
                      <input checked name="method-payment" type="radio">
                      <label for="">Thanh toán bằng thẻ tín dụng (OnePay)</label>
                    </div>
                    <div class="payment-content-left-method-payment-item-img">
                      <img src="image/visa.png" alt="">
                    </div>
                    <div class="payment-content-left-method-payment-item">
                      <input name="method-payment" type="radio">
                      <label for="">Thanh toán bằng thẻ ATM (OnePay)</label>
                    </div>
                    <div class="payment-content-left-method-payment-item-img">
                      <img src="image/vcb.png" alt="">
                    </div>
                    <div class="payment-content-left-method-payment-item">
                      <input name="method-payment" type="radio">
                      <label for="">Thanh toán bằng MoMo</label>
                    </div>
                    <div class="payment-content-left-method-payment-item-img">
                      <img src="image/momo.png" alt="">
                    </div>
                    <div class="payment-content-left-method-payment-item">
                      <input name="method-payment" type="radio">
                      <label for="">Thu tiền tận nơi</label>
                  </div>
                </div>
              </div>
            </div>
              <div class="payment-content-right">
                <div class="payment-content-right-button">
                  <input type="text" placeholder="Mã giảm giá/Quà tặng">
                  <button><i class="fas fa-check"></i></button>
                </div>
                <div class="payment-content-right-button">
                  <input type="text" placeholder="Mã cộng tác viên">
                  <button><i class="fas fa-check"></i></button>
                </div>
                <div class="payment-content-right-mnv">
                  <select name="" id="">
                    <option value="">Chọn mã nhân viên thân thiết</option>
                    <option value="">D345</option>
                    <option value="">A345</option>
                    <option value="">E345</option>
                    <option value="">I345</option>
                  </select>
                </div>
              </div>
            </div>
            <div>
              <div class="payment-content-right-payment">
                <button>TIẾP TỤC THANH TOÁN</button>
              </div>
            </div>
          </div>
        </section>
        <!-- --------------footer------------------>
        <%@include file="footer.jsp" %>
    </body>
</html>
