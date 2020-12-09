<%-- 
    Document   : doDangNhap
    Created on : Dec 1, 2020, 3:06:09 PM
    Author     : local
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
    import="java.util.ArrayList, src.dao.*, src.model.*"%>

<%
    String username = (String)request.getParameter("username");
    String password = (String)request.getParameter("password");
    ThanhVien tv = new ThanhVien();
    tv.setUsername(username);
    tv.setPassword(password);
 
    ThanhVienDAO dao = new ThanhVienDAO();
    boolean kq = dao.ktraDangNhap(tv);
    ThanhVien thanhVien = dao.getThanhVien(username); 
    if(kq && (thanhVien.getVaitro().equalsIgnoreCase("nvql"))){
        session.setAttribute("nvql", thanhVien);
        response.sendRedirect("nvql\\gdChinhNVQL.jsp");
    }else if(kq &&(thanhVien.getVaitro().equalsIgnoreCase("letan"))){
        session.setAttribute("letan", thanhVien);
        response.sendRedirect("letan\\gdChinhLeTan.jsp");
    }else if(kq &&(thanhVien.getVaitro().equalsIgnoreCase("nvtn"))){
        session.setAttribute("nvtn", thanhVien);
        response.sendRedirect("nvtn\\gdChinhNVTN.jsp");
    }else{
        response.sendRedirect("gdDangNhap.jsp?err=fail");
    }
%>

