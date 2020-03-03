<%-- 
    Document   : Toolbar
    Created on : 03-03-2020, 19:05:51
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../CSS/toolbar.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="toolbar">
            <a href="HomePage.jsp">
                TRANG CHỦ
                <div class="wall"></div>
            </a>
            <a href="http://localhost:8084/SocialInsurance/JSP/HomePage.jsp" target="_blank" id="sign_up" onclick="SignUp()">
                ĐĂNG KÝ
                <div class="wall"></div>
            </a>
            <a id="button-login" onclick="showForm()">
                ĐĂNG NHẬP
                <div class="wall"></div>
            </a>
        </div>
        <script src="../JavaScript/toolbar.js" type="text/javascript"></script>
    </body>
</html>
