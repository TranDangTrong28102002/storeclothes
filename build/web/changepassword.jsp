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
            <h2>ĐỔI MẬT KHẨU</h2>
        </div>
        <div>
            <form action="changepassword" method="POST">

                <label for="kh_matkhau1">Mật khẩu cũ:<span class="required">*</span></label>
                <input type="password" name="old_password" id="old_password" placeholder="Mật khẩu cũ..."/>

                <label for="kh_matkhau1">Mật khẩu mới:<span class="required">*</span></label>
                <input type="password" name="new_password" id="new_password" placeholder="Mật khẩu mới..."/>
                
                <label for="kh_matkhau2">Nhập lại mật khẩu mới:<span class="required">*</span></label>
                <input type="password" name="new_password2" id="new_password2" placeholder="Nhập lại mật khẩu mới..."/>

                <button type="submit">Đổi mật khẩu</button>
            </form>

        </div>
    </div>
</body>
</html>
