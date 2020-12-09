<%-- 
    Document   : gdThemXe
    Created on : Dec 3, 2020, 2:48:27 PM
    Author     : local
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file ="../header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title> Thêm xe cho thuê</title>
</head>
<body class="container pt-5">
    <form action="doThemXe.jsp" method="post">
        <table class="table">          
            <tr>
                <td>Hãng:</td>
                <td><input type="text"  id="hang" value="" required name="hang"/></td>
            </tr>
            <tr>
                <td>Loại:</td>
                <td><input type="text"  id="loai" value="" required name="loai"/></td>
            </tr> 
            <tr>
                <td>Năm sản xuất:</td>
                <td><input type="text"  id="namSX" value="" required name="namSX"/></td>
            </tr>
            <tr>
                <td>Biển số xe:</td>
                <td><input type="text" id="bienSoXe" name="bienSoXe" value="" required /></td>
            </tr>  
            <tr>
                <td>Số đăng ký:</td>
                <td><input type="text" id="soDangKy" name="soDangKy" value="" required /></td>
            </tr> 
            <tr>
                <td>Ngày bắt đầu:</td>
                <td><input type="date" id="ngayBatDau" name="ngayBatDau" value="" required /></td>
            </tr> 
            <tr>
                <td>Ngày kết thúc:</td>
                <td><input type="date" id="ngayKetThuc" name="ngayKetThuc" value="" required /></td>
            </tr>
            <tr>
                <td>Giá tiền:</td>
                <td><input type="text" id="giaTien" name="giaTien" value="" required /></td>
            </tr>  

            <tr>
                <td></td>
                <td><input type="submit" value="Thêm xe" class="alert alert-primary"/></td>
                <td><button onclick="openPage('gdTaoHopDong.jsp')" class="alert alert-primary">Quay lại</button></td>
            </tr>
        </table>
    </form>
</body>
</html>