<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Đăng nhập</title>
</head>
<body>
 <div class="Login">
        <div class="Login-full">
            <h1><b>Đăng nhập</b></h1>
           <form action='<c:url value ="/dang-nhap?action=login"/>' id="formLogin" method="post">
                <input type="text" placeholder=" Họ Và Tên" name="ten" required>
                <input type="password" placeholder=" Mật Khẩu" name="pass" required>
                <div class="Login-button">
                    <button style="margin-top:20px ;">Đăng nhập</button>
                </div>
            </form>
            <p style="margin-top:20px ;font-size: 17px;">Quên mật khẩu ?</p>

            <p style="padding-bottom:50px;padding-top: 20px;font-size: 17px;">Bạn chưa có tài khoản<br>
             <a href='<c:url value ="/dang-ky?action=register"/>' style="color: red;font-size: 17px;">Đăng kí</a></p>
        </div>
</div>
</body>
</html>