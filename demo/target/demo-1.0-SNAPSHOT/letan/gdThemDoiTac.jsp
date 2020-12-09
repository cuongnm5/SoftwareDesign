<%-- 
    Document   : gdThemDoiTac
    Created on : Dec 3, 2020, 2:47:52 PM
    Author     : local
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file ="../header.jsp" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title> Thêm thông tin đối tác</title>
    </head>
    <body class="container pt-5" style="text-align: center;">
        <h2>Thêm thông tin đối tác</h2>
        <div class="form-group">
            <form name="suathongtin" action="doThemDoiTac.jsp" method="post">
                <table class="table">          
                    <tr>
                        <td>Họ:</td>
                        <td><input type="text" name="ho" id="ho" value="" required /></td>
                    </tr>
                    <tr>
                        <td>Tên đệm:</td>
                        <td><input type="text" name="tenDem" id="tenDem" value="" required /></td>
                    </tr> 
                    <tr>
                        <td>Tên:</td>
                        <td><input type="text" name="ten" id="ten" value="" required /></td>
                    </tr>
                    <tr>
                        <td>Ngày sinh:</td>
                        <td><input type="date" name="ngaySinh" id="ngaySinh" value="" required /></td>
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
                </table>
                <input type="submit" value="Thêm đối tác" class="alert alert-primary"/>
                <button onclick="openPage('gdChinhLeTan.jsp')" class="alert alert-primary">Quay lại</button>
            </form> 
        </div>

    </body>
</html>
