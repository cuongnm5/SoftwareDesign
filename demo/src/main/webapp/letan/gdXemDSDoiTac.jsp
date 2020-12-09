<%-- 
    Document   : gdXemDSDoiTac
    Created on : Dec 3, 2020, 2:48:08 PM
    Author     : local
--%>

<%@page import="java.sql.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page import="src.model.DoiTac"%>
<%@page import="src.dao.DoiTacDAO"%>
<%@include file ="../header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String name = request.getParameter("timKiem");
    ArrayList<DoiTac> listDoiTac = null;
    if(name!=null && !name.isEmpty()){
        listDoiTac = (new DoiTacDAO()).getDoiTac(name);
    }
    else{
        listDoiTac = (new DoiTacDAO()).getDSDoiTac();
    }
    
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>Danh sách đối tác</title>
    </head>
    <body class="container pt-5">
        <h2>Danh sách đối tác</h2>
        <form class="form-inline">
            <div class="form-group mx-sm-3 mb-2">
                <input type="text" class="form-control"  value="Nhập tên đối tác" name="timKiem">
            </div>
            <button type="submit" class="alert alert-primary">Tìm kiếm</button>
        </form>
        <form>
            <table class="table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Họ và tên</th>
                        <th>SDT</th>
                        <th>Email</th>
                        <th>Ngày sinh</th>
                        <th>Thao tác</th>
                    </tr>
                </thead>
                <tbody>
                    <% for (DoiTac doiTac : listDoiTac) {%>
                    <tr>
                        <td><%=Integer.toString(doiTac.getId())%></td>
                        <td><%=doiTac.getHoTen().getHo() + " " + doiTac.getHoTen().getTenDem() + " " + doiTac.getHoTen().getTen()%></td>
                        <td><%=doiTac.getSDT()%></td>
                        <td><%=doiTac.getEmail()%></td>
                        <td><%=doiTac.getNgaySinh()%></td>
                        <td>
                            <a href="gdTaoHopDong.jsp?idDoiTac=<%=doiTac.getId()%>"> Chọn </a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
            <button class="alert alert-primary">
                <a href="gdTaoHopDong.jsp"> Quay lại </a>
            </button>
        </form>
    </body>
</html>
