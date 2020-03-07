<%-- 
    Document   : SignOutForm
    Created on : 06-03-2020, 00:19:37
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="CSS/signoutform.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div id="id02" class="modal-signout">
            <form class="modal-content-signout animate" action="User">
                <div class="container-signout">
                    <h1>Đăng xuất</h1>
                    <p>Bạn có muốn đăng xuất không?</p>

                    <div class="clearfix">
                        <button type="button" onclick="document.getElementById('id02').style.display = 'none'" class="cancelbtn-signout">Hủy</button>
                        <button type="submit" onclick="document.getElementById('id02').style.display = 'none'" class="deletebtn" name="submit">Đăng xuất</button>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>
