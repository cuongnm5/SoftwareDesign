<%-- 
    Document   : gdTaoHopDong
    Created on : Dec 3, 2020, 2:48:35 PM
    Author     : local
--%>

<%@page import="src.dao.HopDongDAO"%>
<%@page import="src.dao.DoiTacDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="src.model.*"%>
<%@include file ="../header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>Giao diện tạo hợp đồng</title>
    </head>
    <body class="container pt-5">
        <%
            int idHopDong = (new HopDongDAO()).getLastId();
            session.setAttribute("lastId-hopDong", idHopDong);
            ThanhVien letan = (ThanhVien) session.getAttribute("letan");
            if (letan == null) {
                response.sendRedirect("dangnhap.jsp?err=timeout");
            }
            ArrayList<XeThueLai> listXe = (ArrayList<XeThueLai>) session.getAttribute("lt-xeThueLai");
            String id = request.getParameter("idDoiTac");
            DoiTac doiTac = null;
            if(id != null && !id.isEmpty()) {
                doiTac = (new DoiTacDAO()).getDoiTacById(Integer.parseInt(id));
                session.setAttribute("lt-doiTac", doiTac);
            }
            else{
                doiTac = (DoiTac) session.getAttribute("lt-doiTac");
            }
        %>
        <%if (doiTac == null) {%>
            <button onclick="openPage('gdXemDSDoiTac.jsp')" class="alert alert-primary">Chọn đối tác</button>
        <%}%>
        <%if (doiTac != null) {%>
        <h2>Thông tin đối tác</h2>
            <table class="table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Họ và tên</th>
                        <th>SDT</th>
                        <th>Email</th>
                        <th>Ngày sinh</th>
                        <th>Địa chỉ</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><%=Integer.toString(doiTac.getId())%></td>
                        <td><%=doiTac.getHoTen().getTenDem() + " " + doiTac.getHoTen().getTenDem() + " " + doiTac.getHoTen().getTen()%></td>
                        <td><%=doiTac.getSDT()%></td>
                        <td><%=doiTac.getEmail()%></td>
                        <td><%=doiTac.getNgaySinh()%></td>
                        <td><%="Số nhà " + doiTac.getDiaChi().getSoNha() + " phường " + doiTac.getDiaChi().getPhuongXa()%></td>
                    </tr>
                </tbody>
            </table>
            <button onclick="openPage('gdXemDSDoiTac.jsp')" class="alert alert-primary">Chọn laị đối tác</button>
        <%}%>
        
        <%if (listXe == null) {%>
            <button onclick="openPage('gdThemXe.jsp')" class="alert alert-primary">Thêm xe</button>
        <%}%>
        <%if (listXe != null) {%>
        <h2>Thông tin xe cho thuê</h2>
            <table class="table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Tên hãng</th>
                        <th>Loại xe</th>
                        <th>Năm sản xuất</th>
                        <th>Biển số xe</th>
                        <th>Ngày cho thuê</th>
                        <th>Ngày kết thúc</th>
                        <th>Giá thuê</th>
                    </tr>
                </thead> 
                <tbody>
                    <% for (XeThueLai xe : listXe) {%>
                    <tr>
                        <td><%=Integer.toString(xe.getId())%></td>
                        <td><%=xe.getXe().getTenHang()%></td>
                        <td><%=xe.getXe().getLoai()%></td>
                        <td><%=xe.getXe().getNamSX()%></td>
                        <td><%=xe.getXe().getBienSoXe()%></td>
                        <td><%=xe.getNgayBatDau()%></td>
                        <td><%=xe.getNgayKetThuc()%></td> 
                        <td><%=xe.getGiaThue()%></td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
                <button onclick="openPage('gdThemXe.jsp')" class="alert alert-primary">Thêm xe</button>
        <%}%>

        <%if (doiTac!=null && listXe != null) {%>
            <form name="taohopdong" action="doTaoHopDong.jsp" method="post">
                <h2>Thông tin thanh toán</h2>
                <table border="0">          
                    <tr>
                        <td>Ngân hàng</td>
                        <td><input type="text" name="nganHang" id="nganHang" value="" required /></td>
                    </tr>
                    <tr>
                        <td>Số tài khoản</td>
                        <td><input type="text" name="stk" id="stk" value="" required /></td>
                    </tr> 
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Tạo hợp đồng" class="alert alert-primary"/></td>
                    </tr>
                </table>
            </form>
        <%}%>
        <button onclick="openPage('gdChinhLeTan.jsp')" class="alert alert-primary">Quay lại</button>
    </body>
</html>
