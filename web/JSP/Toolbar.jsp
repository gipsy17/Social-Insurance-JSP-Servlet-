<%-- 
    Document   : Toolbar
    Created on : 03-03-2020, 19:05:51
    Author     : Admin
--%>

<%@page import="Model.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="CSS/toolbar.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="toolbar">
            <a href="http://localhost:8084/SocialInsurance1/HomePage">
                TRANG CHỦ
                <div class="wall"></div>
            </a>
            <a href="http://localhost:8084/SocialInsurance1/HomePage" id="Signup">
                ĐĂNG KÝ
                <div class="wall"></div>
            </a>
            <a id="Login" onclick="showForm()">
                ĐĂNG NHẬP
                <div class="wall"></div>
            </a>
            <a href="http://localhost:8084/SocialInsurance1/HomePage">
                DIỄN ĐÀN
                <div class="wall"></div>
            </a>
            <a href="http://localhost:8084/SocialInsurance1/HomePage">
                TIN TỨC
                <div class="wall"></div>
            </a>
            <a href="http://localhost:8084/SocialInsurance1/HomePage">
                HỎI ĐÁP
                <div class="wall"></div>
            </a>
            <a id="Changeinfo"> 
                THAY ĐỔI THÔNG TIN
                <div class="wall"></div>
            </a>
            <a id="Logout" onclick="document.getElementById('id02').style.display='Block'"> 
                ĐĂNG XUẤT
            </a>
            <%
                if (session.getAttribute("Account") != null) {
            %> 
            <script>
                document.getElementById("Changeinfo").style.display = "inline-flex";
                document.getElementById("Logout").style.display = "inline-flex";
                document.getElementById("Login").style.display = "None";
                document.getElementById("Signup").style.display = "None";
            </script>
            <%
            } else {
            %>
            <script>
                document.getElementById("Changeinfo").style.display = "None";
                document.getElementById("Logout").style.display = "None";
                document.getElementById("Login").style.display = "inline-flex";
                document.getElementById("Signup").style.display = "inline-flex";
            </script>
            <%
                }
            %>
        </div>
        <script src="JavaScript/toolbar.js" type="text/javascript"></script>
    </body>
</html>
