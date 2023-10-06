<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

 <section class="headerr">
        <input type="checkbox" id="check">
        <header>
            <h2><a href="#" class="logo">
                    <img src= '<c:url value ="/template/web/images/logo.png"/>'>
                </a></h2>
            <div class="nav">
                <a href='<c:url value ="/trang-chu"/>' >Trang chủ</a>
                <a href='<c:url value ="/gioi-thieu"/>'>Giới thiệu</a>
                <a href='<c:url value ="/san-pham"/>'>Sản phẩm</a>
                <a href='<c:url value ="/tin-tuc"/>'>Tin tức</a>
                <a href='<c:url value ="/lien-he"/>'>Liên hệ</a>
                <a href='<c:url value ="/gio-hang"/>'> <i class="fa-solid fa-cart-shopping"></i></a>
               <%--  <c:if test="$(not empty USERMODEL)">
                <a href='<c:url value ="/dang-nhap?action=login"/>'> Wellcome, ${USERMODEL.userName}</a>
                 <a href='<c:url value ="/thoat?action=logout"/>'>thoát</a>
                </c:if>
                 <c:if test="$(empty USERMODEL)">
                 <a href='<c:url value ="/dang-nhap?action=login"/>'> <ion-icon name="person-circle-outline"
                        style="width: 25px; height: 25px;"></ion-icon></a>
                </c:if> --%>
                <a href='<c:url value ="/dang-nhap?action=login"/>'> <ion-icon name="person-circle-outline"
                        style="width: 25px; height: 25px;"></ion-icon></a>
            </div>
            <label class="label" for="check">
                <i class="fa-solid fa-bars"></i>
                <i class="fa-solid fa-x"></i>
            </label>
        </header>
    </section>