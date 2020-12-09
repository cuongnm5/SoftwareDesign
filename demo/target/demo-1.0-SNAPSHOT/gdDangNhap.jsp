<%-- 
    Document   : gdDangNhap
    Created on : Dec 1, 2020, 3:06:00 PM
    Author     : local
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng nhập</title>
    </head>
    <body class="container pt-5">
        <%
            if (request.getParameter("err") != null && request.getParameter("err").equalsIgnoreCase("timeout")) {
        %> <h4>Hết phiên làm việc. Hãy đăng nhập lại!</h4><%
         } else if (request.getParameter("err") != null && request.getParameter("err").equalsIgnoreCase("fail")) {
        %> <h4 color="red">Sai tên đăng nhập/mật khẩu!</h4><%
             }
        %>
        <h2>Login</h2>
        <form name="dangnhap" action="doDangNhap.jsp" method="post">
            <table>
                <tr>
                    <td>Tên đăng nhập:</td>
                    <td><input type="text" name="username" id="username" required /></td>
                </tr>
                <tr>
                    <td>Mật khẩu:</td>
                    <td><input type="password" name="password" id="password"
                               required /></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Đăng nhập" class="alert alert-primary" /></td>
                </tr>
            </table>
        </form>

    </body>
</html>
