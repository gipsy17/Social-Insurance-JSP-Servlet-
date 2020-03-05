<%-- 
    Document   : HomePage
    Created on : 26-02-2020, 22:20:58
    Author     : Phan Thanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bảo hiểm xã hội Việt Nam</title>
        <link href="CSS/homepage.css" rel="stylesheet" type="text/css"/>

    </head>
    <body id="Body">
        <!--Header-->
        <jsp:include page="Header.jsp"></jsp:include>
        <!--Toolbar-->
        <jsp:include page="Toolbar.jsp"></jsp:include>
            <!--Content-->
            <div class="content">
                <img src="Image/Home.jpg" alt="" style="width: 100%;height: 100%"class="image"/>
                <div class="overlay">
                    <div class="text">VÌ AN SINH XÃ HỘI</br>VÌ HẠNH PHÚC MỌI NGƯỜI</div>
                </div>
            </div>
        <!--Footer-->
        <jsp:include page="Footer.jsp"></jsp:include>
        <!--LoginForm-->
        <jsp:include page="FormLogin.jsp"></jsp:include>
        <!--SignOutForm-->
        <jsp:include page="SignOutForm.jsp"></jsp:include>
    </body>
</html>
