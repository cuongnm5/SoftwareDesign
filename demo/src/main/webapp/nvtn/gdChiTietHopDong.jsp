<%-- 
    Document   : gdChiTietHopDong
    Created on : Dec 3, 2020, 2:50:30 PM
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
        <title>Giao diện chi tiết hợp đồng</title>
    </head>
    <body class="container pt-5">
        <%
            String id = request.getParameter("idHopDong");
            HopDong hopDong = (new HopDongDAO()).getHopDongById(Integer.parseInt(id));
            String[] split = hopDong.getThongTinThanhToan().split("-");
            String nganHang = split[0];
            String stk = split[1];
            session.setAttribute("hopDong", hopDong);
            float tongTien = 0;
            for (XeThueLai xe : hopDong.getListXeThueLai()) {
                tongTien += xe.getGiaThue();
            }
        %>
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
                    <td><%=Integer.toString(hopDong.getDoiTac().getId())%></td>
                    <td><%=hopDong.getDoiTac().getHoTen().getTenDem() + " " + hopDong.getDoiTac().getHoTen().getTenDem() + " " + hopDong.getDoiTac().getHoTen().getTen()%></td>
                    <td><%=hopDong.getDoiTac().getSDT()%></td>
                    <td><%=hopDong.getDoiTac().getEmail()%></td>
                    <td><%=hopDong.getDoiTac().getNgaySinh()%></td>
                    <td><%="Số nhà " + hopDong.getDoiTac().getDiaChi().getSoNha() + " phường " + hopDong.getDoiTac().getDiaChi().getPhuongXa()%></td>
                </tr>
            </tbody>
        </table>

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
                <% for (XeThueLai xe : hopDong.getListXeThueLai()) {%>
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
        <h4>Tổng số tiền phải thanh toán: <%=tongTien%></h4>
        <h2>Thông tin thanh toán</h2>
        <table class='table'>          
            <tr>
                <td>Ngân hàng: </td>
                <td><%=nganHang%></td>
            </tr>
            <tr>
                <td>Số tài khoản: </td>
                <td><%=stk%></td>
            </tr> 
        </table>   
        <form name="thanhToan" action="doChiTietHopDong.jsp" method="post">
            <div>
                <label>Chọn file</label>
                <input type="file" id="file" name="file"/>  
            </div>
            <div>
                <input type="submit" value="Thanh toán" class="alert alert-primary"/> 
                <button onclick=" openPage('gdXemDSHopDong.jsp')" class="alert alert-primary"> Quay lại</button>
            </div >
        </form>
    </body>
</html>
