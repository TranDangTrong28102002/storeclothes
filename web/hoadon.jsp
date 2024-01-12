<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            h1 {
                text-align: center;
            }
            img {
                width: 100px;
                height: 100px;
            }
            .trangtri {
                border-collapse: collapse; 
            }
            .trangtri td,th {
                border-bottom: 1px solid gray;
                padding: 25px;
                text-align: center;
            }
        </style>
    </head>
    <body>
        <h1>Lịch sử giao dịch</h1>
        
        <div class="HD">
            <table class="trangtri">
                <tr>
                    <th>Sản Phẩm</th>
                    <th>Tên sản phẩm</th>
                    <th>Giá Bán</th>
                    <th>Số Lượng</th>
                    <th>Thành Tiền</th>
                </tr>
                <c:forEach items="${requestScope.data}" var="hd">
                    <tr>
                        <td><image src="${hd.img}"></td>
                        <td>${hd.title}</td>
                        <td>${hd.giaban}</td>
                        <td>${hd.soluong}</td>
                        <td>${hd.thanhtien}</td>
                    </tr>
                </c:forEach> 
            </table>
        </div>
    </body>
</html>