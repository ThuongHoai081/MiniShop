<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Đăng ký</title>
</head>
<body>
<div class="dangky">
        <div class="Login-full">
            <h1><b>Đăng kí</b></h1>
            <form action='<c:url value ="/dang-ky?action=register"/>' id="formRegister" method="post">
                <input type="text" placeholder=" Họ Và Tên" name="hoten" required>
                <input type="email" placeholder=" Email" name="email" required>
                <input type="password" placeholder=" Mật Khẩu" name="matkhau" required>
                <div class="Login-button">
                    <button style="margin-top:20px ;">Đăng kí ngay</button>
                </div>
            </form>
            <p style="font-size: 17px;">Thông tin của bạn sẽ được bảo mật theo<a href="#" style="color: red;"> chính sách riêng tư </a>của chúng
                tôi</p>

            <p style="padding-bottom:50px;padding-top: 20px; font-size: 17px;">Bạn đã có tài khoản<br> 
            <a href='<c:url value ="/dang-nhap?action=login"/>' style="color: red;font-size: 17px;">Đăng nhập</a></p>
        </div>
   </div>
    
</body>
</html>