<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        /* Thiết lập kiểu chung cho container */
.container {
    width: 400px;
    margin: auto;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

/* Thiết lập kiểu cho header */
.header {
    text-align: center;
    margin-bottom: 20px;
}

.header h2 {
    color: #333;
}

/* Thiết lập kiểu cho form đăng nhập */
.form-login {
    text-align: center;
}

.form-login form {
    display: flex;
    flex-direction: column;
    align-items: center;
}

.form-login input {
    width: 100%;
    padding: 10px;
    margin: 5px 0;
    box-sizing: border-box;
}

.form-login label {
    display: flex;
    align-items: center;
    margin-top: 10px;
}

.form-login label input {
    margin-right: 5px;
}

.form-login button {
    background-color: #4CAF50;
    color: white;
    border: none;
    padding: 10px;
    cursor: pointer;
    border-radius: 5px;
}

/* Thiết lập kiểu cho nút đăng ký */
.button-register {
    text-align: center;
    margin-top: 20px;
}

.button-register a {
    text-decoration: none;
}

.register-btn {
    background-color: #008CBA;
    color: white;
    border: none;
    padding: 10px;
    cursor: pointer;
    border-radius: 5px;
}

.register-btn:hover {
    background-color: #00587a;
}

        
    </style>
</head>
<body>
    <%@include file="header.jsp" %>
    <div class="container"> 
        <div class ="header">
            <h2>ĐĂNG NHẬP</h2>
        </div>
        <div class="form-login">
            <form action="login" method="POST">
                <input type="text" name="user" placeholder="Email/SDT...">
                <input type="password" name="pass" placeholder="Mật khẩu...">
                <button type="submit">Đăng nhập</button>
            </form>
        </div>
        <div class="button-register">
            <a href="register">
                <button class="register-btn" type="submit">Đăng ký</button>
            </a>
        </div>
    </div>
</body>
</html>
