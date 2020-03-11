<%-- 
    Document   : Insurance
    Created on : 09-03-2020, 22:06:38
    Author     : Admin
--%>

<%@page import="Model.*"%>
<%@page import="Common.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="CSS/Insurance.css" rel="stylesheet" type="text/css"/>
    </head>
    <body style="background-color: #ffffff">
        <!--Header-->
        <jsp:include page="Header.jsp"></jsp:include>
            <!--Toolbar-->
        <jsp:include page="Toolbar.jsp"></jsp:include>
            <!--Content-->
            </br><form action="User">
                <h2 style="color: #009ee3">Thông tin người lao động và các khoản bảo hiểm</h2>
            <%
                User u = (User) session.getAttribute("User");
                String name = u.getName();
                String address = u.getAddress();
                String phonenumber = u.getPhonenumber();
                String insurancenumber = u.getInsurancenumber();
                Salary s = u.getS();
                int salary = s.getJobsalary() + s.getMainsalary() + s.getResponsalary();
                int ld = salary * 8 / 100;
                int dn = (int) (salary * 17.5 / 100);
                int t = u.getInsuranceStatus();
                String status = "";
                if (t == 0) {
                    status = "Chưa đóng";
                } else {
                    status = "Đã đóng";
                }
            %>

            <table class="insurance">
                <tr id="columName">
                    <th>Họ và tên</th>
                    <th>Địa chỉ</th>
                    <th>Số điện thoại</th>
                    <th>Mã số bảo hiểm</th>
                    <th>Lương tham gia bảo hiểm</th>
                    <th>Phí người lao động (8%)</th>
                    <th>Phí doanh nghiệp (17,5%)</th>
                    <th>Trạng thái</th>
                </tr>
                <tr id="userInfo">
                    <th><%out.print(name);%></th>
                    <th><%out.print(address);%></th>
                    <th><%out.print(phonenumber);%></th>
                    <th><%out.print(insurancenumber);%></th>
                    <th><%out.print(Format.formatMoney(salary));%></th>
                    <th style="color: red"><%out.print(Format.formatMoney(ld));%></th>
                    <th style="color: red"><%out.print(Format.formatMoney(dn));%></th>
                    <th style="color: red"><%out.print(status);%></th>
                </tr>
            </table></br>
            <div class="clearfix">
                <button id="btn-tt" style="float: right;width: 25%;background-color:#009ee3" type="submit" class="confirmbtn" name="submit" value="confirm">
                    Thanh toán
                </button>
            </div>
            <% if (t == 1) {%>
            <script>
                document.getElementById('btn-tt').style.display = 'None';
            </script>
            <%}else{%>
            <script>
                document.getElementById('btn-tt').style.display = 'Block';
            </script>
            <%}%>
        </form></br>
        <!--Footer-->
        <jsp:include page="Footer.jsp"></jsp:include>
            <!--LoginForm-->
        <jsp:include page="FormLogin.jsp"></jsp:include>
            <!--SignOutForm-->
        <jsp:include page="SignOutForm.jsp"></jsp:include>
            <!--SignUpForm-->
        <jsp:include page="SignUpForm.jsp"></jsp:include>
            <!--ChangeInfoForm-->
        <jsp:include page="InfoForm.jsp"></jsp:include>
    </body>
</html>
