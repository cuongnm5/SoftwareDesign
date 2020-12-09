<%-- 
    Document   : gdSuaThongTinDoiTac
    Created on : Dec 3, 2020, 2:34:33 PM
    Author     : local
--%>

<%@page import="src.dao.DoiTacDAO"%>
<%@page import="src.model.DoiTac"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%
            String method = "sua";
            String action = request.getParameter("action");
            String id = request.getParameter("idDoiTac");
        %>
        <%if (action.equals("xoa")) {
                session.setAttribute("nvql-method", "xoa");
                boolean dao = (new DoiTacDAO()).xoa(Integer.parseInt(id));
        %>

        <title>Xóa thông tin đối tác</title>
    </head>
    <body>
        <h2>Xóa thông tin thành công</h2>
    </body>           
    <%}%>

    <%if (action.equals("sua")) {
    session.setAttribute("nvql-method", "sua");
            DoiTac doiTac = (new DoiTacDAO()).getDoiTacById(Integer.parseInt(id));
            session.setAttribute("doiTacSua", doiTac);
    %>

    <title> Sửa thông tin đối tác</title>
</head>
<body>
    <form name="suathongtin" action="doSuaThongTinDoiTac.jsp" method="post">
        <table border="0">          
            <tr>
                <td>Họ:</td>
                <td><input type="text" name="ho" id="ho" value="<%=(String) doiTac.getHoTen().getHo()%>" required /></td>
            </tr>
            <tr>
                <td>Tên:</td>
                <td><input type="text" name="ten" id="ten" value="<%=(String) doiTac.getHoTen().getTen()%>" required /></td>
            </tr> 
            <tr>
                <td>Tên đệm:</td>
                <td><input type="text" name="tenDem" id="tenDem" value="<%=(String) doiTac.getHoTen().getTenDem()%>" required /></td>
            </tr>
            <tr>
                <td>Ngày sinh:</td>
                <td><input type="text" name="ngaySinh" id="ngaySinh" value="<%=doiTac.getNgaySinh()%>" required /></td>
            </tr>  
            <tr>
                <td>SDT:</td>
                <td><input type="text" name="SDT" id="SDT" value="<%=(String) doiTac.getSDT()%>" required /></td>
            </tr> 
            <tr>
                <td>Email:</td>
                <td><input type="text" name="email" id="email" value="<%=(String) doiTac.getEmail()%>" required /></td>
            </tr> 
            <tr>
                <td>Số nhà:</td>
                <td><input type="text" name="soNha" id="soNha" value="<%=(String) doiTac.getDiaChi().getSoNha()%>" required /></td>
            </tr>
            <tr>
                <td>Phường xã:</td>
                <td><input type="text" name="phuongXa" id="phuongXa" value="<%=(String) doiTac.getDiaChi().getPhuongXa()%>" required /></td>
            </tr>  
            <tr>
                <td>Quận huyện:</td>
                <td><input type="text" name="quanHuyen" id="quanHuyen" value="<%=(String) doiTac.getDiaChi().getQuanHuyen()%>" required /></td>
            </tr> 
            <tr>
                <td>Tỉnh thành:</td>
                <td><input type="text" name="tinhThanh" id="tinhThanh" value="<%=(String) doiTac.getDiaChi().getTinhThanh()%>" required /></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Sửa thông tin" /></td>
            </tr>
        </table>
    </form>
</body>  
<%}%>

<%if (action.equals("them")) {
session.setAttribute("nvql-method", "them");
%>

<title> Thêm thông tin đối tác</title>
</head>
<body>
    <form name="suathongtin" action="doSuaThongTinDoiTac.jsp" method="post">
        <table border="0">          
            <tr>
                <td>Họ:</td>
                <td><input type="text" name="ho" id="ho" value="" required /></td>
            </tr>
            <tr>
                <td>Tên:</td>
                <td><input type="text" name="ten" id="ten" value="" required /></td>
            </tr> 
            <tr>
                <td>Tên đệm:</td>
                <td><input type="text" name="tenDem" id="tenDem" value="" required /></td>
            </tr>
            <tr>
                <td>Ngày sinh:</td>
                <td><input type="text" name="ngaySinh" id="ngaySinh" value="" required /></td>
            </tr>  
            <tr>
                <td>SDT:</td>
                <td><input type="text" name="SDT" id="SDT" value="" required /></td>
            </tr> 
            <tr>
                <td>Email:</td>
                <td><input type="text" name="email" id="email" value="" required /></td>
            </tr> 
            <tr>
                <td>Số nhà:</td>
                <td><input type="text" name="soNha" id="soNha" value="" required /></td>
            </tr>
            <tr>
                <td>Phường xã:</td>
                <td><input type="text" name="phuongXa" id="phuongXa" value="" required /></td>
            </tr>  
            <tr>
                <td>Quận huyện:</td>
                <td><input type="text" name="quanHuyen" id="quanHuyen" value="" required /></td>
            </tr> 
            <tr>
                <td>Tỉnh thành:</td>
                <td><input type="text" name="tinhThanh" id="tinhThanh" value="" required /></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Sửa thông tin" /></td>
            </tr>
        </table>
    </form>
</body>  
<%}%>
</html>
