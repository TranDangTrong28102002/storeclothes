

<%@page import="java.util.ArrayList"%>
<%@page import="entity.sanpham"%>
<%@page import="entity.danhmucsanpham"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>danhmucsanpham</title>
        <script src="https://kit.fontawesome.com/1147679ae7.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="./giaodientrangmucsp.css">
        
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
/*--------------------category----------------------------*/
.category {
    padding: 100px 0 0;
}
.category-top {
    width: 100%;
    padding: 20px;
}
.category-top p {
    font-family: var(--main-text-font);
    margin: 0 12px;
    font-size: 18px;
    display: inline;
    font-weight: bold;
}
.category-content {
    padding: 20px;
}

.category-content-right {
    width: 100%;
    padding-left: 20px;
    float:left;
}
.category-content-right-top {
    width: 100%;
    display: inline;
    margin: 30px;
}
.category-content-right-top p{
    width: 40%;
    font-weight: bold;
    margin-right: 20px;
    float: left;
}
.category-content-right-top-item{
    width: 100%; 
    display: inline;
}
.category-content-right-top-item button {
    width: 20%;
    padding: 10px 15px;
    float: left;
    margin-right: 20px;
    display: flex;
    justify-content: space-between;
    background-color: #ffff;
    border: 1px solid #dddddd;
    cursor: pointer;
}

.category-content-right-top-item select {
    width: 20%;
    padding: 10px 15px;
    float: left;
    display: flex;
    justify-content: space-between;
    background-color: #ffff;
    border: 1px solid #dddddd;
    cursor: pointer;

}
.category-content-right-center {
    margin: 20px;
    width: 100%;
    float: left;
    column-count: 4;
    column-gap: 10px;
}
.category-content-right-center-item {
    text-align: center;
    padding: 12px 0;
    display: inline-block;
}
.category-content-right-center-item h2 {
    font-size: 12px;
    font-family: var(--main-text-font);
    margin-top: 6px;
    color: black;

}
.category-content-right-center-item img{
    margin-right: 10%;
    display: inline-block;    
    max-width:90%;
    max-height:90%;
    width: auto;
    height: auto;
}
.category-content-right-center-item p{
    font-size: 20px;
}
.category-content-right-bottom {
    margin: 20px 0 20px;
    width: 100%;
}
.category-content-right-bottom-items p{
    font-family: var(--main-text-font);
    font-size: 12px;
    float: left;
}
.category-content-right-bottom-items  p{
    font-family: var(--main-text-font);
    font-size: 12px;
    float: right;
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
    height: 100px;
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
            header{
                border-bottom: solid 1px #57585A;
            }
            .container{
                margin-left: 40px;
            }
            .container-body{
                display: flex;
            }
            .category-right{
                width: 70%;
                display: flex;
                flex-direction: column;
            }
            .category-right-content-item h2 {
                font-size: 12px;
                font-family: var(--main-text-font);
                margin-top: 6px;
                color: #57585A;
            }
            .header-bottem{
                top: 200px;
                border-bottom: solid 1px #57585A;
            }
        </style>
    </head>
    
    <body>
<!----------------Giao dien trang muc----------->
    <section class="category">
        <div class="container">
<!--            <div class="category-top row">
                <p>Trang chủ - <span style="color: blue">Nữ - </span> <span style="color: blue" >Hàng nữ mới về</span> </p>
            </div>-->

            <div class="container-body">
                 <c:set var="x"  value= "${requestScope.dmsp}" />
                 
                <div class="category-content-right">
                            <div class="category-content-right-top" style="display: flex;">
                                <div class="category-content-right-top p">
                                    <p>${x.tenLoaiSanPham}</p>
                                </div>

                            <!--    <div class="category-right-top-item">
                                    <button style="width:100px; height: 50px" > <span style="width:100px">Bộ lọc</span><i class="fas fa-sort-down"></i></button>
                                </div> -->

                                <div class="category-content-right-top-item">
                                    <form name="myForm" action="sapxep">
                                    <!--    <select style="width:200px; " name="sapxeptheo" onchange="myForm.submit()">
                                              <option value="tucaodenthap">Giá cao đến thấp</option>
                                              <option value="tuthapdencao">Giá thấp đến cao</option>
                                         </select> -->
                                        <input type="hidden" name="idDanhMucSanPham" value="${x.idDanhMucSanPham}">
                                     </form>
                                </div>
                            </div>
                                     
                             <div class="category-content-right-center">
                                <c:forEach items="${listP}" var="o">
                                    <div class="category-content-right-center-item">
                                        <a href="detail?idSanPham=${o.idSanPham}"><img src="${o.img}" alt=""></a>
                                        <a href="detail?idSanPham=${o.idSanPham}"><h2>${o.title}</h2></a>
                                        <p>${o.giaBan}<sup>đ</sup></p>
                                    </div>
                                </c:forEach>
                            </div>
                    </div>
    </section>
   
    <script>
        const itemsliderbar = document.querySelectorAll(".category-left-li")
        itemsliderbar.forEach( function(menu,index){
           menu.addEventListener("click",function(){
               menu.classList.toggle("block");
           })
        })
      
    </script>
</body>
</html>
