<%-- 
    Document   : gdChinhNVTN
    Created on : Dec 1, 2020, 3:05:09 PM
    Author     : local
--%>

<%@page import="src.model.ThanhVien"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file ="../header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>Giao diện chính nhân viên thu ngân</title>
    </head>
    <body class="container pt-5" style="text-align: center;">
        <%
            ThanhVien nvtn = (ThanhVien) session.getAttribute("nvtn");
            if (nvtn == null) {
                response.sendRedirect("dangnhap.jsp?err=timeout");
            }
        %>
        <h1>Xin chào nhân viên thu ngân <%=nvtn.getHoTen().getTen()%> !</h1>    
        <button onclick="openPage('gdXemDSHopDong.jsp')" class="alert alert-primary">Xem danh sách hợp đồng</button>
        <button onclick="openPage('../gdDangNhap.jsp')" class="alert alert-primary">Đăng xuất</button>
    </body>
</html>