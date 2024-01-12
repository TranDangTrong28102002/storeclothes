
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<body>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trang chủ</title>
        <link rel="stylesheet" href="header.css"/>
        <script src="https://kit.fontawesome.com/1147679ae7.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="trangchu.css">
        <style>
            header{
                font-size: 14px;
            }
            .menu > li:hover .sub-menu_treEm{
            display: flex;
            }
            .sub-menu_treEm{
            display: none;
            line-height: 5px;
            position: absolute;
            width: 1200px;
            border: 1px solid #ccc;
            padding: 10px 0 10px 20px;
            z-index: 1;
            background: #fff;
            }
            
            .menu > li:hover .sub-menu_boSuuTap{
                display: flex;
            }
            .sub-menu_boSuuTap{
            display: none;
            line-height: 5px;
            position: absolute;
            width: 1000px;
            border: 1px solid #ccc;
            padding: 10px 0 10px 20px;
            z-index: 1;
            background: #fff;
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

/* Thiết lập các kiểu chung cho phần tử "orthers" */
.orthers {
    display: flex;
    align-items: center;
}

.orthers form {
    display: flex;
    align-items: center;
    margin-right: 10px; /* Khoảng cách giữa form và các liên kết khác */
}

.orthers input[type="text"] {
    padding: 5px;
    border: 1px solid #ccc;
    border-radius: 4px;
}

.orthers button {
    padding: 5px 10px;
    background-color: #333; /* Màu nền cho nút tìm kiếm */
    color: white;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

/* Các liên kết (link) trên thanh điều hướng */
.orthers li {
    list-style-type: none;
    margin-right: 10px; /* Khoảng cách giữa các liên kết */
}

.orthers li a {
    text-decoration: none;
    color: #333;
    font-size: 18px;
}

/* Hiệu ứng khi rê chuột qua liên kết */
.orthers li a:hover {
    color: #4CAF50; /* Màu khi rê chuột qua */
}

/* Các liên kết đặc biệt với icon */
.orthers li a.fa {
    font-size: 24px;
}

/* Đối với liên kết đăng nhập và đăng xuất */
.orthers a[href="login"], .orthers a[href="logout"], .orthers a[href="changepassword"] {
    margin-right: 10px; /* Khoảng cách giữa các liên kết */
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
    <header>
        <div class="menu">
            <li> 
                <a href="">NỮ</a> 
                <ul class="sub-menu_nu">   
                        <ul>
                            <li><a style="font-weight: bold" href="">Áo</a>
                                <c:forEach items="${listPNu}" var="o" >
                                    <c:if test="${o.theloai=='nu_ao'}">
                                        <li><a style="font-weight: normal" href="category?idDanhMucSanPham=${o.idDanhMucSanPham}">${o.tenLoaiSanPham}</a>
                                    </c:if>    
                                </c:forEach>
                        </ul>
                    
                        <ul>
                            <li><a style="font-weight: bold" href="">Áo Khoác</a>
                                <c:forEach items="${listPNu}" var="o" >
                                   <c:if test="${o.theloai=='nu_aoKhoac'}">
                                        <li><a style="font-weight: normal" href="category?idDanhMucSanPham=${o.idDanhMucSanPham}">${o.tenLoaiSanPham}</a>
                                    </c:if>      
                                </c:forEach>
                        </ul>
                    
                        <ul>
                            <li><a style="font-weight: bold" href="">Quần</a>
                                <c:forEach items="${listPNu}" var="o" >
                                    <c:if test="${o.theloai=='nu_quan'}">
                                        <li><a style="font-weight: normal" href="category?idDanhMucSanPham=${o.idDanhMucSanPham}">${o.tenLoaiSanPham}</a>
                                    </c:if>  
                                </c:forEach>
                        </ul>
                        
                        <ul>
                            <li><a style="font-weight: bold" href="">Chân váy</a>
                                <c:forEach items="${listPNu}" var="o">
                                     <c:if test="${o.theloai=='nu_chanVay'}">
                                        <li><a style="font-weight: normal" href="category?idDanhMucSanPham=${o.idDanhMucSanPham}">${o.tenLoaiSanPham}</a>
                                    </c:if>  
                                </c:forEach>
                        </ul>
                        
                        <ul>
                            <li><a style="font-weight: bold" href="">Đầm</a>
                                <c:forEach items="${listPNu}" var="o">
                                    <c:if test="${o.theloai=='nu_dam'}">
                                        <li><a style="font-weight: normal" href="category?idDanhMucSanPham=${o.idDanhMucSanPham}">${o.tenLoaiSanPham}</a>
                                    </c:if>  
                                </c:forEach>
                        </ul>
                     
                    
                </ul>
            </li>
            
            <li> 
                <a href="">NAM</a> 
                <ul class="sub-menu_nam">   
                    <ul>
                        <li><a style="font-weight: bold" href="">Áo</a>
                        <c:forEach items="${listPNam}" var="o">
                            <c:if test="${o.theloai=='nam_ao'}">
                                <li><a style="font-weight: normal" href="category?idDanhMucSanPham=${o.idDanhMucSanPham}">${o.tenLoaiSanPham}</a>
                            </c:if>  
                        </c:forEach>
                    </ul>
                    
                    <ul>
                        <li><a style="font-weight: bold" href="">Quần</a>
                        <c:forEach items="${listPNam}" var="o" >
                            <c:if test="${o.theloai=='nam_quan'}">
                                <li><a style="font-weight: normal" href="category?idDanhMucSanPham=${o.idDanhMucSanPham}">${o.tenLoaiSanPham}</a>
                            </c:if>  
                        </c:forEach>
                    </ul>
                    
                    <ul>
                        <li><a style="font-weight: bold" href="">GIÀY & DÉP</a>
                        <c:forEach items="${listPNam}" var="o" >
                            <c:if test="${o.theloai=='nam_giayDep'}">
                                <li><a style="font-weight: normal" href="category?idDanhMucSanPham=${o.idDanhMucSanPham}">${o.tenLoaiSanPham}</a>
                            </c:if>  
                        </c:forEach>
                    </ul>
                    
                    <ul>
                        <li><a style="font-weight: bold" href="">PHỤ KIỆN</a>
                        <c:forEach items="${listPNam}" var="o" >
                            <c:if test="${o.theloai=='nam_phuKien'}">
                                <li><a style="font-weight: normal" href="category?idDanhMucSanPham=${o.idDanhMucSanPham}">${o.tenLoaiSanPham}</a>
                            </c:if>  
                        </c:forEach>
                    </ul>
                    
                </ul>
            </li>
            
            <li> 
                <a href="">TRẺ EM</a> 
                <ul class="sub-menu_treEm">   
                    
                    <ul>
                        <li><a style="font-weight: bold" href="">BÉ GÁI</a>
                        <c:forEach items="${listPTreEm}" var="o" >
                            <c:if test="${o.theloai=='treEm_beGai'}">
                                <li><a style="font-weight: normal" href="category?idDanhMucSanPham=${(o.idDanhMucSanPham)}">${o.tenLoaiSanPham}</a>
                            </c:if>  
                        </c:forEach>
                    </ul>
                    
                    <ul>
                        <li><a style="font-weight: bold" href="">BÉ TRAI</a>
                        <c:forEach items="${listPTreEm}" var="o" >
                            <c:if test="${o.theloai=='treEm_beTrai'}">
                                <li><a style="font-weight: normal" href="category?idDanhMucSanPham=${o.idDanhMucSanPham}">${o.tenLoaiSanPham}</a>
                            </c:if>  
                        </c:forEach>
                    </ul>
                </ul>
            </li>
            
         <!--   <li> <a href="">GIÁ CUỐI TỪ 99K</a> </li> -->
            
        <!--    <li> 
                <a href="">BỘ SƯU TẬP</a> 
                <ul class="sub-menu_boSuuTap">   
                    <ul>
                        <li><a style="font-weight: bold" href="">NỮ</a>
                        <c:forEach items="${listPboSuuTap}" var="o">
                            <c:if test="${o.theloai=='bosuutap_nu'}">
                                <li><a style="font-weight: normal" href="category?idDanhMucSanPham=${o.idDanhMucSanPham}">${o.tenLoaiSanPham}</a>
                            </c:if>  
                        </c:forEach>
                    </ul>
                    
                    <ul>
                        <li><a style="font-weight: bold" href="">NAM</a>
                        <c:forEach items="${listPboSuuTap}" var="o" >
                            <c:if test="${o.theloai=='bosuutap_nam'}">
                                <li><a style="font-weight: normal" href="category?idDanhMucSanPham=${o.idDanhMucSanPham}">${o.tenLoaiSanPham}</a>
                            </c:if>  
                        </c:forEach>
                    </ul>
                    
                    <ul>
                        <li><a style="font-weight: bold" href="">TRẺ EM</a>
                        <c:forEach items="${listPboSuuTap}" var="o" >
                            <c:if test="${o.theloai=='bosuutap_treEm'}">
                                <li><a style="font-weight: normal" href="category?idDanhMucSanPham=${o.idDanhMucSanPham}">${o.tenLoaiSanPham}</a>
                            </c:if>  
                        </c:forEach>
                    </ul>
                </ul>
            </li>
            <li> <a href="">LIFESTYLE</a> </li>
            <li> <a href="">VỀ CHÚNG TÔI</a> </li>-->
        </div>
        <div class="logo" style="margin-right: 150px;"> <a href="https://storeclothes.projectname.click/">
                <img src="https://pubcdn.ivymoda.com/ivy2/images/logo.png" alt="ảnh lỗi"/></a>
        </div>
        <div class="orthers">
            <form name="f" action="timkiem" method="POST" accept-charset="UTF-8">
                <input id="keyword" type="text" name="sanphamtimkiem" placeholder="Tìm kiếm sản phẩm">
                <button><i class="fas fa-search"> </i></button>
            </form>
            <li><a class="fa fa-user" href="users" style="margin-top:-10px; margin-left: 0px;"></a></li>
            <li><a class="fa fa-shopping-bag" href="giohang" style="margin-top:-10px;"></a></li>
            <c:choose>
                <c:when test="${user != null}">
                    <a class="fa fa-sign-out" href="logout" style="font-size: 25px; margin-top: -3px;"></a>

                  <!--  <a href="changepassword">Đổi Mật Khẩu</a> -->
                </c:when>
                <c:otherwise>
                </c:otherwise>
            </c:choose>
        </div>
    </header>
    </body>
</html>
