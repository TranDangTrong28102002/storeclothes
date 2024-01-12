

<!--<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://kit.fontawesome.com/1147679ae7.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="footer.css"/>
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
    width: 100%;
    display: flex;
    justify-content: space-between;
    padding: 12px 50px;
    height: 70px;
    align-items: center;
    position: fixed;
    top: 0;
    left: 0;
    z-index: 1;
    background: rgba(255, 2555, 255,1);
    transition: background-color 0.5s ease;
    font-size: 14px;
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

/* menu_nu */
.menu > li:hover .sub-menu_nu{
    display: flex;
}
.menu > li a{
    display: block;
    line-height: 20px;
    font-weight: bold;
}   
.sub-menu_nu ul{
    padding-left: 20px;
}
.sub-menu_nu{
    display: none;
    line-height: 5px;
    position: absolute;
    width: 1280px;
    border: 1px solid #ccc;
    padding: 10px 0 10px 20px;
    z-index: 1;
    background: #fff;
}
.sub-menu_nu > li a{
    font-weight: normal;
}

/* menu_nam */

.menu > li:hover .sub-menu_nam{
    display: flex;
}
.menu > li a{
    display: block;
    line-height: 20px;
    font-weight: bold;
}   
.sub-menu_nam ul{
    padding-left: 20px;
}
.sub-menu_nam{
    display: none;
    line-height: 5px;
    position: absolute;
    width: 1200px;
    border: 1px solid #ccc;
    padding: 10px 0 10px 20px;
    z-index: 1;
    background: #fff;
}
.sub-menu_nam > li a{
    font-weight: normal;
}

/* menu_treEm */
.menu > li:hover .menu_treEm{
    display: flex;
}
.menu > li a{
    display: block;
    line-height: 20px;
    font-weight: bold;
}   
.menu_treEm ul{
    padding-left: 20px;
}
.menu_treEm{
    display: none;
    line-height: 5px;
    position: absolute;
    width: 1200px;
    border: 1px solid #ccc;
    padding: 10px 0 10px 20px;
    z-index: 1;
    background: #fff;
}
.menu_treEm > li a{
    font-weight: normal;
}
/* menu bo suu tap*/
.menu > li:hover .sub-menu_boSuuTap{
    display: flex;
}
.menu > li a{
    display: block;
    line-height: 20px;
    font-weight: bold;
}   
.sub-menu_boSuuTap ul{
    padding-left: 20px;
}
.sub-menu_boSuuTap{
    display: none;
    line-height: 5px;
    position: absolute;
    width: 1100px;
    border: 1px solid #ccc;
    padding: 10px 0 10px 20px;
    z-index: 1;
    background: #fff;
}
.sub-menu_boSuuTap > li a{
    font-weight: normal;
}

/* */

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

        </style>
    </head>
    <body>
        <div class="footer-top">
            <li><a href="index.html"><img src="https://pubcdn.ivymoda.com/ivy2/images/logo-footer.png" alt=""></a></li>
            <li><a href="http://online.gov.vn/Home/WebDetails/36596"><img src="https://pubcdn.ivymoda.com/ivy2/images/img-congthuong.png" alt=""></a></li>
            <li><a href="">Liên hệ</a></li>
            <li><a href="">Tuyển dụng</a></li>
            <li><a href="">Giới thiệu</a></li>
            <li>
                <a href="" class="fab fa-facebook"></a>
                <a href="" class="fab fa-twitter"></a>
                <a href="" class="fab fa-youtube"></a>
            </li>
        </div>

        <div class="footer-center">
            <p>Công ty Cổ phần Dự Kim với số đăng ký kinh doanh: 0105777650</p>
            <p> <b>Địa chỉ đăng ký:</b>  Tổ dân phố Tháp, P.Đại Mỗ, Q.Nam Từ Liêm, TP.Hà Nội, Việt Nam</p>
            <p> <b> Số điện thoại:</b> 0243 205 2222/ 090 589 8683</p>
            <p> <b>Email:</b>  cskh@ivy.com.vn</p>
        </div>
        <div class="footer-bottom">
            ©IVYmoda All rights reserved
        </div>
    </body>
</html>
