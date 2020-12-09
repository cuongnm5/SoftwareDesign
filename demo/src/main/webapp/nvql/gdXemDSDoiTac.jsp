<%-- 
    Document   : gdXemDSDoiTac
    Created on : Dec 3, 2020, 2:34:17 PM
    Author     : local
--%>

<%@page import="java.sql.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page import="src.model.DoiTac"%>
<%@page import="src.dao.DoiTacDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    ArrayList<DoiTac> listDoiTac = (new DoiTacDAO()).getDSDoiTac();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Danh sách đối tác</title>
    </head>
    <body>
        <h2>Danh sách đối tác</h2>
        <form name="chonDoiTac" action="gdSuaThongTinDoiTac.jsp" method="POST">
            <table border="1">
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
                        <td><%=doiTac.getHoTen().getTenDem()+" "+doiTac.getHoTen().getTenDem()+" "+doiTac.getHoTen().getTen()%></td>
                        <td><%=doiTac.getSDT()%></td>
                        <td><%=doiTac.getEmail()%></td>
                        <td><%=doiTac.getNgaySinh()%></td>
                        <td>
                            <a href="gdSuaThongTinDoiTac.jsp?action=sua&&idDoiTac=<%=doiTac.getId()%>"> Sửa </a>
                            <a href="gdSuaThongTinDoiTac.jsp?action=xoa&&idDoiTac=<%=doiTac.getId()%>""> Xóa </a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
                <button>
                    <a href="gdSuaThongTinDoiTac.jsp?action=them&&idDoiTac=null"> Thêm </a>
                </button>
        </form>
    </body>
</html>
