<%-- 
    Document   : doTaoHopDong
    Created on : Dec 3, 2020, 2:49:29 PM
    Author     : local
--%>

<%@page import="src.dao.HopDongDAO"%>
<%@page import="java.sql.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page import="src.model.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    ArrayList<XeThueLai> listXe = (ArrayList<XeThueLai>) session.getAttribute("lt-xeThueLai");
    DoiTac doiTac = (DoiTac) session.getAttribute("lt-doiTac");
    ThanhVien letan = (ThanhVien) session.getAttribute("letan");
    String thongTinThanhToan = (String) request.getParameter("nganHang") +"-" +(String) request.getParameter("stk");
    
    long millis = System.currentTimeMillis();
    Date date = new Date(millis);
 
    HopDong hopDong = new HopDong(date, thongTinThanhToan, listXe, doiTac, letan);
    
    HopDongDAO dao = new HopDongDAO();
    boolean kq = dao.luu(hopDong, listXe);
    if(kq){
        response.sendRedirect("gdChinhLeTan.jsp");
    }else {
        response.sendRedirect("gdTaoHopDong.jsp");
    }
%>
