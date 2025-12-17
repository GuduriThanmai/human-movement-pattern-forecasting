<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
    <style>
        body {
            font-family: Arial;
            background-color: #f2f2f2;
        }
        .login-box {
            width: 350px;
            margin: 120px auto;
            padding: 25px;
            background: white;
            border-radius: 5px;
            box-shadow: 0 0 10px #aaa;
        }
        h2 {
            text-align: center;
        }
        input {
            width: 100%;
            padding: 8px;
            margin: 8px 0;
        }
        button {
            width: 100%;
            padding: 8px;
            background-color: #2e86c1;
            color: white;
            border: none;
            cursor: pointer;
        }
        .error {
            color: red;
            text-align: center;
        }
    </style>
</head>

<body>

<div class="login-box">
    <h2>Admin Login</h2>

    <form action="login" method="post">
        <input type="text" name="username" placeholder="Admin Username" required />
        <input type="password" name="password" placeholder="Admin Password" required />
        <button type="submit">Login</button>
    </form>

    <%
        String msg = request.getParameter("msg");
        if ("invalid".equals(msg)) {
    %>
        <p class="error">Invalid Username or Password</p>
    <%
        }
    %>
</div>

</body>
</html>
