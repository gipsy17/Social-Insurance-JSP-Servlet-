<%-- 
    Document   : Toolbar
    Created on : 03-03-2020, 19:05:51
    Author     : Admin
--%>

<%@page import="Common.Validate"%>
<%@page import="Model.User"%>
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
            <a id="Signup" onclick="showForm('id03')">
                ĐĂNG KÝ
                <div class="wall"></div>
            </a>
            <a id="Login" onclick="showForm('id01')">
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
            <a href="https://jobsgo.vn/blog/bao-hiem-xa-hoi-la-gi-nhung-dieu-can-biet-ve-bao-hiem-xa-hoi/">
                HỎI ĐÁP
                <div class="wall"></div>
            </a>
            <a id="Changeinfo" onclick="showForm('id04')"> 
                KHAI BÁO THÔNG TIN
                <div class="wall"></div>
            </a>
            <a id="Insurance1" onclick="showForm('id04')"> 
                ĐÓNG BẢO HIỂM
                <div class="wall"></div>
            </a>
            <a id="Insurance2" href="http://localhost:8084/SocialInsurance1/Insurance"> 
                ĐÓNG BẢO HIỂM
                <div class="wall"></div>
            </a>
            <a id="Logout" onclick="showForm('id02')"> 
                ĐĂNG XUẤT
            </a>
            <%
                if (session.getAttribute("Account") != null) {
                User u = (User)session.getAttribute("User");
            %> 
            <script>
                document.getElementById("Changeinfo").style.display = "inline-flex";
                document.getElementById("Logout").style.display = "inline-flex";
                document.getElementById("Login").style.display = "None";
                document.getElementById("Signup").style.display = "None";
            </script>
            <%
                    if (!Validate.checkUser(u)) {
                    %>
                    <script>
                        document.getElementById('Insurance1').style.display = 'Inline-flex'
                        document.getElementById('Insurance2').style.display = 'None'
                    </script>
                    <%}else{%>
                     <script>
                        document.getElementById('Insurance2').style.display = 'Inline-flex'
                        document.getElementById('Insurance1').style.display = 'None'
                    </script>
                    <%}%>
            <%
            } else {
            %>
            <script>
                document.getElementById("Changeinfo").style.display = "None";
                document.getElementById("Logout").style.display = "None";
                document.getElementById("Insurance1").style.display = "None";
                document.getElementById("Insurance2").style.display = "None";
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
