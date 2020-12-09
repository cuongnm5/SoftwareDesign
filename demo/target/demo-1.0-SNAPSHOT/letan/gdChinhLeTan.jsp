<%-- 
    Document   : gdChinhLeTan
    Created on : Dec 1, 2020, 3:04:58 PM
    Author     : local
--%>

<%@page import="src.model.DoiTac"%>
<%@page import="src.model.XeThueLai"%>
<%@page import="java.util.ArrayList"%>
<%@page import="src.model.ThanhVien"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file ="../header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>Giao diện chính lễ tân</title>
    </head>
    <body class="container pt-5">
        <%
            ThanhVien letan = (ThanhVien) session.getAttribute("letan");
            if (letan == null) {
                response.sendRedirect("dangnhap.jsp?err=timeout");
            }
        %>


        <h1>Xin chào lễ tân <%=letan.getHoTen().getTen()%></h1>    

        <button class="alert alert-primary" onclick="openPage('gdThemDoiTac.jsp')">Thêm đối tác mới</button>
        <button class="alert alert-primary" onclick="openPage('gdTaoHopDong.jsp')">Tạo hợp đồng</button>
        <button onclick="openPage('../gdDangNhap.jsp')" class="alert alert-primary">Đăng xuất</button>
    </body>
</html>
