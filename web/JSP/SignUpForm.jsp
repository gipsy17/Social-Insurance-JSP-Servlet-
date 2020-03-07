<%-- 
    Document   : SignUpForm
    Created on : 06-03-2020, 01:43:47
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="CSS/signupform.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div id="id03" class="modal-signup">
            <form class="modal-content-signup animate" action="User" method="post">
                <div class="container-signup">
                    <span onclick="document.getElementById('id03').style.display = 'none'" class="close" title="Close Modal">&times;</span>

                    <h1>Đăng ký tài khoản</h1>
                    <p>Điền đầy đủ thông tin bên dưới để đăng ký tài khoản.</p>
                    <hr>
                    <label for="accountname"><b>Tên đăng nhập</b></label>
                    <input type="text" placeholder="Nhập tên đăng nhập" name="username" required>

                    <label for="psw"><b>Mật khẩu</b></label>
                    <input type="password" placeholder="Nhập mật khẩu" name="password" required>

                    <label for="psw-repeat"><b>Nhập lại mật khẩu</b></label>
                    <input type="password" placeholder="Nhập lại mật khẩu" name="passwordrepeat" required>
                    <% if (session.getAttribute("errorsignup") != null) {
                    %>

                    <div id="alert" style="color: red">
                        <%
                            out.print(session.getAttribute("errorsignup"));
                            session.setAttribute("errorsignup", null);
                        %>
                    </div>
                    <script>
                        document.getElementById('id03').style.display = 'block'
                    </script>
                    <%
                        }
                    %>
                    <label>
                        <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
                    </label>

                    <p>Bạn đã có tài khoản? <a style="color:dodgerblue" onclick="Loginnow()">Đăng nhập ngay</a>.</p>

                    <div class="clearfix">
                        <button type="button" onclick="document.getElementById('id03').style.display = 'none'" class="cancelbtn-signup">Hủy</button>
                        <button type="submit" class="signupbtn" name="submit" value="signup">Đăng ký</button>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>
