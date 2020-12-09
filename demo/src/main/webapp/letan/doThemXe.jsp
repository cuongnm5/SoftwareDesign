<%-- 
    Document   : doThemXe
    Created on : Dec 3, 2020, 2:49:17 PM
    Author     : local
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.Date"%>
<%@include file ="../header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"
        import="java.util.ArrayList, src.dao.*, src.model.*"%>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <%
            String hang = (String) request.getParameter("hang");
            String loai = (String) request.getParameter("loai");
            String namSX = (String) request.getParameter("namSX");
            String nbd = (String) request.getParameter("ngayBatDau");
            String nkt = (String) request.getParameter("ngayKetThuc");

            DateFormat df = new SimpleDateFormat("yyyy-mm-dd");
            java.util.Date uDate = df.parse(nbd);
            Date ngayBatDau = new Date(uDate.getTime());
            java.util.Date uDate2 = df.parse(nkt);
            Date ngayKetThuc = new Date(uDate2.getTime());
            String bienSoXe = (String) request.getParameter("bienSoXe");
            String soDangKy = (String) request.getParameter("soDangKy");
            float giaTien = Float.parseFloat((String) request.getParameter("giaTien"));

            Xe xe = new Xe(hang, loai, namSX, soDangKy, bienSoXe);
            XeThueLai xeThueLai = new XeThueLai(ngayBatDau, ngayKetThuc, giaTien, xe);
            XeThueLaiDAO dao = new XeThueLaiDAO();
       //    boolean kq = dao.luu(xeThueLai);

            ArrayList<XeThueLai> listXe = (ArrayList<XeThueLai>) session.getAttribute("lt-xeThueLai");
            if (listXe == null) {
                listXe = new ArrayList<XeThueLai>();
            }
            listXe.add(xeThueLai);
            session.setAttribute("lt-xeThueLai", listXe);
        %>        
    </head>
    <body class="container pt-5" style="text-align: center;">
        <h2>Thêm xe mới vào hợp đồng thành công! Bạn có muốn thêm xe khác không?</h2>
        <button onclick="openPage('gdTaoHopDong.jsp')" class="alert alert-primary">Không</button>
        <button onclick="openPage('gdThemXe.jsp')" class="alert alert-primary">Có</button>   
    </body>
</html>


