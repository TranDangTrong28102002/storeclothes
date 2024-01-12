
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thêm Danh Mục Sản Phẩm</title>
    </head>
    <style>
        .container {
    width: 50%;
    margin: 50px auto;
}

table {
    width: 100%;
    border-collapse: collapse;
    margin-bottom: 20px;
}

table, th, td {
    border: 1px solid #ddd;
}

th, td {
    padding: 10px;
    text-align: left;
}

input[type="text"] {
    width: 100%;
    padding: 8px;
    box-sizing: border-box;
    margin-bottom: 10px;
}

input[type="submit"] {
    background-color: #4CAF50;
    color: white;
    padding: 10px 15px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

input[type="submit"]:hover {
    background-color: #45a049;
}

    </style>
    <body>
       <center><h2>Thêm Danh Mục Sản Phẩm</h2></center> 
        <div class="container">
        <form action="add" method="post">
            <table>
                <tr>
                    <td>
                        ID
                    </td>
                    <td>
                        <input type="text" name="idDanhMucSanPham"/>
                    </td>
                        
                </tr>
                <tr>
                    <td>
                        Thể Loại
                    </td>
                    <td>
                        <input type="text" name="theloai"/>
                    </td>
                </tr>
                <tr>
                    <td>Tên Loại Sản Phẩm</td>
                    <td>
                        <input type="text" name="tenLoaiSanPham" /><!-- comment -->
                    </td>
                </tr>               
            </table>
            <input type="submit" value="SAVE">
            
            
        </table>
        </form>
        </div>
    </body>
</html>
