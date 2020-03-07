<%-- 
    Document   : InfoForm
    Created on : 07-03-2020, 13:07:06
    Author     : Admin
--%>

<%@page import="Model.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="CSS/infoform.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div id="id04" class="modal-info">
            <form class="modal-content-info animate" action="User" method="post">
                <div class="container-info">
                    <span onclick="document.getElementById('id04').style.display = 'none'" class="close" title="Close Modal">&times;</span>

                    <h1>Thông tin của bạn</h1>
                    <p>Điền đầy đủ thông tin bên dưới để đóng bảo hiểm</p>
                    <hr>
                    <h2>Thông tin cá nhân</h2>
                    <%
                        String name = "";
                        String address = "";
                        String phonenumber = "";
                        String insurancenumber = "";
                        String mainsalary = "";
                        String jobsalary = "";
                        String responsalary = "";
                        if (session.getAttribute("User") != null) {
                            User u = (User) session.getAttribute("User");
                            if(u.getName()!=null)    name = u.getName();
                            if(u.getAddress()!=null)    address = u.getAddress();
                            if(u.getPhonenumber()!=null)    phonenumber = u.getPhonenumber();
                            if(u.getInsurancenumber()!=null)    insurancenumber = u.getInsurancenumber();
                            Salary s = u.getS();
                            mainsalary += s.getMainsalary();
                            jobsalary += s.getJobsalary();
                            responsalary += s.getResponsalary();
                        }
                    %>
                    <%
                        if (session.getAttribute("errorinfo") != null) {
                    %>
                    <div id="alert" style="color: red">
                        <%
                            out.print(session.getAttribute("errorinfo"));
                            String s = "fwefwe";
                            session.setAttribute("errorinfo", null);
                        %>
                    </div>
                    <script>
                        document.getElementById('id04').style.display = 'block'
                    </script>
                    <%}%>
                    <hr>
                    <label for="name"><b>Họ và tên</b></label>
                    <input type="text" placeholder="Nhập họ và tên của bạn" name="name" value="<%out.print(name);%>" required>
                    <label for="address"><b>Địa chỉ</b></label>
                    <input type="text" placeholder="Nhập địa chỉ của bạn" name="address" value="<%out.print(address);%>" required>
                    <label for="phonenumber"><b>Số điện thoại</b></label>
                    <input type="text" placeholder="Nhập SĐT của bạn" name="phonenumber" value="<%out.print(phonenumber);%>" required>
                    <label for="insurancenumber"><b>Mã số bảo hiểm</b></label>
                    <input type="text" placeholder="Nhập mã số bảo hiểm của bạn" name="insurancenumber" value="<%out.print(insurancenumber);%>" required>
                    <h2>Thu nhập</h2>
                    <hr>
                    <label for="mainsalary"><b>Lương chính</b></label>
                    <input type="text" placeholder="Nhập lương chính của bạn" name="mainsalary" value="<%out.print(mainsalary);%>" required>
                    <label for="jobsalary"><b>Phụ cấp chức vụ</b></label>
                    <input type="text" placeholder="Nhập lương phụ cấp chức vụ của bạn" name="jobsalary" value="<%out.print(jobsalary);%>" required>
                    <label for="responsalary"><b>Phụ cấp trách nhiệm</b></label>
                    <input type="text" placeholder="Nhập lương phụ cấp trách nhiệm của bạn" name="responsalary"  value="<%out.print(responsalary);%>" required>
                    <div class="clearfix">
                        <button type="button" onclick="document.getElementById('id04').style.display = 'none'" class="cancelbtn-info">Hủy</button>
                        <button type="submit" class="confirmbtn" name="submit" value="confirm">Xác nhận</button>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>
