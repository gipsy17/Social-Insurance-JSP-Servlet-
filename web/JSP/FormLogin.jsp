<%-- 
    Document   : FormLogin
    Created on : 04-03-2020, 00:34:58
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="CSS/loginform.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div id="id01" class="modal">
            <form class="modal-content animate" action="User" method="post" name="loginform">
                <div class="imgcontainer">
                    <span onclick="document.getElementById('id01').style.display = 'none'" class="close" title="Close Modal">&times;</span>
                    <img src="Image/logo_BHXH.svg" alt="Avatar" class="avatar">
                </div>

                <div class="container">
                    <label for="uname"><b>Tên đăng nhập</b></label>
                    <input type="text" placeholder="Điền tên đăng nhập" name="username" required>

                    <label for="psw"><b>Mật khẩu</b></label>
                    <input type="password" placeholder="Điền mật khẩu" name="password" required>
                    <% if (session.getAttribute("error") != null) {
                    %>
                    
                    <div id="alert" style="color: red">
                        <%
                            out.print(session.getAttribute("error"));
                            session.setAttribute("error", null);
                        %>
                    </div>
                    <script>
                        document.getElementById('id01').style.display = 'block'
                    </script>
                    <%
                        }
                    %>

                    <button type="submit">Đăng nhập</button>
                    <label>
                        <input type="checkbox" checked="checked" name="remember"> Nhớ tôi cho lần sau
                    </label>
                </div>

                <div class="container" style="background-color:#f1f1f1">
                    <button type="button" onclick="document.getElementById('id01').style.display = 'none'" class="cancelbtn">Cancel</button>
                    <span class="psw"><a id="ForgotPass" href="#">Forgot password?</a></span>
                </div>
            </form>
        </div>
    </body>
</html>
