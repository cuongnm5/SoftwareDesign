<%-- 
    Document   : doDangNhap
    Created on : Dec 1, 2020, 3:06:09 PM
    Author     : local
--%>

<%@page import="java.sql.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"
    import="java.util.ArrayList, src.dao.*, src.model.*"%>

<%
    String method = (String)session.getAttribute("nvql-method");
    if(method.equals("sua")) {
        String ho = (String)request.getParameter("ho");
        String ten = (String)request.getParameter("ten");
        String tenDem = (String)request.getParameter("tenDem");
        Date ngaySinh = Date.valueOf((String)request.getParameter("ngaySinh"));
        String SDT = (String)request.getParameter("SDT");
        String email = (String)request.getParameter("email");
        String soNha = (String)request.getParameter("soNha");
        String phuongXa = (String)request.getParameter("phuongXa");
        String quanHuyen = (String)request.getParameter("quanHuyen");
        String tinhThanh = (String)request.getParameter("tinhThanh");
        DoiTac tmp = (DoiTac) session.getAttribute("doiTacSua");
        HoTen hoTen = new HoTen(tmp.getHoTen().getId(), tenDem, ten, ho);
        DiaChi diaChi = new DiaChi(tmp.getDiaChi().getId(), soNha, phuongXa, quanHuyen, tinhThanh);
        DoiTac doiTac = new DoiTac(tmp.getId(),SDT, email, hoTen, diaChi, ngaySinh);
        System.out.println(doiTac);
        System.out.println(diaChi);
        System.out.println(hoTen);
        DoiTacDAO dao = new DoiTacDAO();
        boolean kq = dao.updateThongTin(doiTac);
        if(kq){
            response.sendRedirect("gdXemDSDoiTac.jsp");
        }else {
            response.sendRedirect("gdChinhNVQL.jsp");
        }    
    }
    else if(method.equals("them")){
        String ho = (String)request.getParameter("ho");
        String ten = (String)request.getParameter("ten");
        String tenDem = (String)request.getParameter("tenDem");
        Date ngaySinh = Date.valueOf((String)request.getParameter("ngaySinh"));
        String SDT = (String)request.getParameter("SDT");
        String email = (String)request.getParameter("email");
        String soNha = (String)request.getParameter("soNha");
        String phuongXa = (String)request.getParameter("phuongXa");
        String quanHuyen = (String)request.getParameter("quanHuyen");
        String tinhThanh = (String)request.getParameter("tinhThanh");

        HoTen hoTen = new HoTen(tenDem, ten, ho);
        DiaChi diaChi = new DiaChi(soNha, phuongXa, quanHuyen, tinhThanh);
        DoiTac doiTac = new DoiTac(SDT, email, hoTen, diaChi, ngaySinh);
        DoiTacDAO dao = new DoiTacDAO();
        boolean kq = dao.luu(doiTac);
        if(kq){
            response.sendRedirect("gdXemDSDoiTac.jsp");
        }else {
            response.sendRedirect("gdChinhNVQL.jsp");
        }
    }
}

%>

