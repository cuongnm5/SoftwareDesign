<%-- 
    Document   : doChiTietHopDong
    Created on : Dec 3, 2020, 2:50:54 PM
    Author     : local
--%>

<%@page import="src.dao.HoaDonDAO"%>
<%@page import="src.model.ThanhVien"%>
<%@page import="src.model.XeThueLai"%>
<%@page import="java.sql.Date"%>
<%@page import="src.model.HoaDon"%>
<%@page import="src.model.HopDong"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String file = request.getParameter("file");
    HopDong hopDong = (HopDong) session.getAttribute("hopDong");
    HoaDon hoaDon = new HoaDon();
    
    long millis = System.currentTimeMillis();
    Date date = new Date(millis);
    
    hoaDon.setDoiTac(hopDong.getDoiTac());
    hoaDon.setBillPath(file);
    float tongTien = 0;
    for(XeThueLai xe: hopDong.getListXeThueLai()){
        tongTien += xe.getGiaThue();
    }
    ThanhVien tv = (ThanhVien) session.getAttribute("nvtn");
    hoaDon.setGiaTien(tongTien);
    hoaDon.setThuNgan(tv);
    hoaDon.setThoiGianThanhToan(date);
    hoaDon.setHopDong(hopDong);
    boolean kq = (new HoaDonDAO()).luu(hoaDon);
    if(kq){
        response.sendRedirect("gdChinhNVTN.jsp");
    }
    else {
        response.sendRedirect("gdChiTietHopDong.jsp?idHopDong="+String.valueOf(hopDong.getId()));
    }
%>
