<%-- 
    Document   : gdXemDSHopDong
    Created on : Dec 3, 2020, 2:50:13 PM
    Author     : local
--%>

<%@page import="java.sql.Date"%>
<%@page import="src.dao.HopDongDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="src.model.HopDong"%>
<%@include file ="../header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    ArrayList<HopDong> listHD = null;
    String name = request.getParameter("timKiem");
    if (name != null && !name.isEmpty()) {
        listHD = (new HopDongDAO()).getHopDong(name);
    } else {
        listHD = (new HopDongDAO()).getDSHopDong();
    }

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>Danh sách hợp đồng</title>
    </head>
    <body class="container pt-5">
        <h2>Danh sách hợp đồng</h2>
        <form class="form-inline">
            <div class="form-group mx-sm-3 mb-2">
                <input type="text" class="form-control"  value="Nhập tên đối tác" name="timKiem">
            </div>
            <button type="submit" class="alert alert-primary">Tìm kiếm</button>
        </form>
        <form name="chonHopDong" action="gdChiTietHopDong.jsp" method="POST">
            <table class="table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Tên đối tác</th>
                        <th>Ngày tạo</th>
                        <th>Trạng thái</th>
                    </tr>
                </thead>
                <tbody>
                    <% for (HopDong hopDong : listHD) {%>
                    <tr>
                        <td><%=Integer.toString(hopDong.getId())%></td>
                        <td><%=hopDong.getDoiTac().getHoTen().getTenDem() + " " + hopDong.getDoiTac().getHoTen().getTenDem() + " " + hopDong.getDoiTac().getHoTen().getTen()%></td>
                        <td><%=hopDong.getNgayTao()%></td>
                        <td><%=hopDong.getTrangThai()%></td>
                        <td>
                            <a href="gdChiTietHopDong.jsp?idHopDong=<%=hopDong.getId()%>"> Chọn </a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </form>
                <button onclick="openPage('gdChinhNVTN.jsp')" class="alert alert-primary">Quay lại</button>
    </body>
</html>
