<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <title>Đăng kí</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 100px;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            max-width: 500px; 
            width: 100%;
            margin: 20px;
            padding: 20px;
            box-sizing: border-box;
        }

        h2, h4 {
            color: #333;
        }

        form {
            display: flex;
            flex-direction: column;
            margin-bottom: 20px; 
        }

        input {
            margin-bottom: 10px;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
        }

        label {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
        }

        button {
            background-color: #4caf50;
            color: #fff;
            padding: 15px; /* Điều chỉnh kích thước nút */
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }

        a {
            text-decoration: none;
        }

    </style>
</head>
<body>
        <div class="container"> 
        <div>
            <h2>ĐĂNG KÝ</h2>
        </div>
        <div>
            <form action="register" method="POST">
                <label for="kh_ten">Họ tên:<span class="required">*</span></label>
                <input type="text" name="kh_ten" id="kh_ten" placeholder="Tên..."/>

                <label for="kh_email">Email:<span class="required">*</span></label>
                <input type="email" name="kh_email" id="kh_email" placeholder="Email..."/>

                <label for="kh_dienthoai">Điện thoại:<span class="required">*</span></label>
                <input type="text" name="kh_dienthoai" id="kh_dienthoai" placeholder="Điện thoại..."/>

                <label for="kh_gioitinh">Giới tính:<span class="required">*</span></label>
                <select name="kh_gioitinh" id="kh_gioitinh">
                    <option value="0">Nữ</option>
                    <option value="1">Nam</option>
                    <option value="2">Khác</option>
                </select>

                <label for="kh_tinh">Địa chỉ:<span class="required">*</span></label>
                <input type="text" name="kh_tinh" id="kh_diachi" placeholder="Tỉnh..."/>


                <label for="kh_matkhau1">Mật khẩu:<span class="required">*</span></label>
                <input type="password" name="kh_matkhau1" id="kh_matkhau1" placeholder="Mật khẩu..."/>

                <label for="kh_matkhau2">Nhập lại mật khẩu:<span class="required">*</span></label>
                <input type="password" name="kh_matkhau2" id="kh_matkhau2" placeholder="Nhập lại mật khẩu..."/>

                <button type="submit">Đăng ký</button>
            </form>

        </div>
    </div>
</body>
</html>
