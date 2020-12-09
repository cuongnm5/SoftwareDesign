<%-- 
    Document   : gdChinhNVQL
    Created on : Dec 1, 2020, 3:04:42 PM
    Author     : local
--%>

<%@page import="src.model.ThanhVien"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file ="../header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Giao diện chính nhân viên quản lý</title>
    </head>
    <body>
        <%
            ThanhVien nvql = (ThanhVien) session.getAttribute("nvql");
            if (nvql == null) {
                response.sendRedirect("dangnhap.jsp?err=timeout");
            }
        %>
        <h1>Xin chào nhân viên quản lý <%=nvql.getHoTen().getTen()%> !</h1>    
        <button onclick="openPage('gdXemDSDoiTac.jsp')">Xem danh sách đối tác</button>

    </body>
</html>
