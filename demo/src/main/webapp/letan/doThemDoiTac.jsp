<%-- 
    Document   : doThemDoiTac
    Created on : Dec 3, 2020, 2:49:08 PM
    Author     : local
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"
        import="java.util.ArrayList, src.dao.*, src.model.*"%>

<%
    String ho = (String) request.getParameter("ho");
    String ten = (String) request.getParameter("ten");
    String tenDem = (String) request.getParameter("tenDem");
    DateFormat df = new SimpleDateFormat("yyyy-mm-dd");
    java.util.Date uDate = df.parse((String) request.getParameter("ngaySinh"));
    Date ngaySinh = new Date(uDate.getTime());
    String SDT = (String) request.getParameter("SDT");
    String email = (String) request.getParameter("email");
    String soNha = (String) request.getParameter("soNha");
    String phuongXa = (String) request.getParameter("phuongXa");
    String quanHuyen = (String) request.getParameter("quanHuyen");
    String tinhThanh = (String) request.getParameter("tinhThanh");

    HoTen hoTen = new HoTen(tenDem, ten, ho);
    DiaChi diaChi = new DiaChi(soNha, phuongXa, quanHuyen, tinhThanh);
    DoiTac doiTac = new DoiTac(SDT, email, hoTen, diaChi, ngaySinh);
    DoiTacDAO dao = new DoiTacDAO();
    boolean kq = dao.luu(doiTac);
    if (kq) {
        response.sendRedirect("gdChinhLeTan.jsp");
    } else {
        response.sendRedirect("gdThemDoiTac.jsp");
    }
%>
