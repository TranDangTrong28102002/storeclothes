
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trang Chủ</title>
        <script src="https://kit.fontawesome.com/1147679ae7.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="./trangchu.css">
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
    width: 80%;
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
    <!--header-->
    <%@include file="header.jsp" %>
    <section>
        <div class="aspect-ratio-169">
            <img src="https://pubcdn.ivymoda.com/files/news/2023/03/20/99081d779a7f7cab71eead17a00494b6.jpg" alt="">
            <img src="https://pubcdn.ivymoda.com/files/news/2023/03/20/ebcda271b884a7994e3660ed4f8d13c2.jpg" alt="">
            <img src="https://pubcdn.ivymoda.com/files/news/2023/03/06/63de1b697d785a9f15c3bef27024e165.jpg" alt="">
        </div>
        <div class="dot-container">
            <div class='dot active'></div>
            <div class='dot'></div>
            <div class='dot'></div>
        </div>
    </section>
</body>
<!-- --------------app-container------------------>
<section class="app-container">
    <p>Tải ứng dụng IVYmoda</p>
    <div class="app-google">
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

<script id="Slider">
     
    const imgPosittion = document.querySelectorAll(".aspect-ratio-169 img")
    const imgContainer = document.querySelector(".aspect-ratio-169")
    const dotItem = document.querySelectorAll(".dot")
    // console.log(imgPosittion)
    let imgNumber = imgPosittion.length
    let index = 0;
    imgPosittion.forEach(function(image,index){
        image.style.left = index*100 + "%"; 
        dotItem[index].addEventListener("click",function(){
            slider(index)
        })
    })
    function imgSlide(){
        index++;
        if(index>=imgNumber){
            index = 0;
        }
        slider(index)
    }
    function slider(index){
        imgContainer.style.left = "-" + index*100 + "%"
        const dotActive = document.querySelector(".active")
        dotActive.classList.remove('active')
        dotItem[index].classList.add("active")

    }
    setInterval(imgSlide,5000)
</script>
</html>


