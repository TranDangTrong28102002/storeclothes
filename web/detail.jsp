<%@page import="entity.sanpham"%>
<%@page import="entity.chitiethoadon"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chi tiết đơn hàng</title>
    <style>
        table {
            width: 80%;
            border-collapse: collapse;
            margin: 20px auto;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

        img {
            max-width: 100px;
            max-height: 100px;
        }
    </style>
    </head>
    <body>
        <center><h2>Thông tin đơn hàng</h2></center>

    <table>
        <tr>
            <th>STT</th>
            <th>Tên mặt hàng</th>
            <th>Hình ảnh</th>
            <th>Size</th>
            <th>Màu sắc</th>
            <th>Số lượng</th>
            <th>Đơn giá</th>
        </tr>
        <c:if test="${chiTietDH.size() > 0}">
            <c:forEach items="${chiTietDH}" var="o" varStatus="loop">
                <tr>
                    <td>${loop.index + 1}</td>
                    <td>${sp.get(loop.index).getTitle()}</td>
                    <td><img src="${sp.get(loop.index).getImg()}"></td>
                    <td>${o.getSize()}</td>
                    <td>${mau.get(loop.index)}</td>
                    <td>${o.getSoLuong()}</td>
                    <td>${sp.get(loop.index).getGiaBan()}</td>
                </tr>
        </c:forEach>
        </c:if>
    </table>

    </body>
</html>
