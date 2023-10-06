<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>

<body>
<div class = "gioithieu">
    <div class="gioithieu-div1">
        <img src='<c:url value ="/template/web/images/gioithiu.jpg"/>'>
    </div>
    <div class="gioithieu-div2">
        <div class="gioithieu-div2-l">
            <div class="gioithieu-div2-l-t">
                <img src='<c:url value ="/template/web/images/img1.jpg"/>' >
            </div>
            <div class="gioithieu-div2-l-b">
                <img src='<c:url value ="/template/web/images/img2.jpg"/>'>
            </div>
        </div>
        <div class="gioithieu-div2-r">
            <h3><i>CẢM ƠN BẠN ĐÃ LỰA CHỌN CHÚNG TÔI</i></h3>
        </div>
    </div>
    <div class="gioithieu-div3">
        <div class="gioithieu-div3-title">
            <h1 style="margin-top: 40px; margin-left: 5%; font-size: 25px; text-align: justify;">
                <i>-- TRUYỀN THÔNG --</i></h1>
                <br><br> 
                <p >Tiệm kính mắt Mini chắc không còn quá xa lạ với giới trẻ nữa. Đây là kênh thông tin mua sắm và 
                giải trí dành cho giới trẻ.
                Được thành lập từ năm 2023, đã và đang và sẽ chiếm vị trí không thể thiếu đối với các bạn trẻ. 
                Cập nhật thông tin thời trang nhanh chóng và phù hợp với thị hiếu của khán giả thông qua các mạng xã hội như Facebook, Tiktok, Instagram,
                Youtube, kính mắt Mini là lựa chọn hàng đầu cho những ai muốn tận hưởng các bài viết, video 
                vừa mang tính giải trí mà vẫn có đầy đủ thông tin cần thiết.</p>
        </div>
        <div class="gioithieu-div3-content">
            <div class="gioithieu-div3-content-left">
                <img src='<c:url value ="/template/web/images/iggioithieu.jpg"/>' style="margin-left: 5%; margin-top: -10px;">
                <img src='<c:url value ="/template/web/images/fbgioithieu.jpg"/>'  style="margin-left: 70%; margin-top: -10px;" >
                <img src='<c:url value ="/template/web/images/tiktokgioithieu.jpg"/>' style="margin-left: 10%; margin-top: -10px;" >
            </div>
        </div>
    </div>
    <div class="gioithieu-div4">
        <div class="gioithieu-div4-title">
            <h1><i>-- KHÁCH HÀNG THÂN YÊU --</i></h1>
        </div>
        <div class="gioithieu-div4-content" >
            <div class="slider" x-data="{start: true, end: false}" style="padding-top: 80px;">
                <div class="slider__content" x-ref="slider"
                    x-on:scroll.debounce="$refs.slider.scrollLeft == 0 ? start = true : start = false; Math.abs(($refs.slider.scrollWidth - $refs.slider.offsetWidth) - $refs.slider.scrollLeft) < 5 ? end = true : end = false;">
                    <div class="slider__item">
                        <img class="slider__image" src='<c:url value ="/template/web/images/mkinhLV1.jpg"/>' >
                        <!-- <div class="slider__info">
                            <h2>Animal 1</h2>
                        </div> -->
                    </div>
                    <div class="slider__item">
                        <img class="slider__image" src='<c:url value ="/template/web/images/mkinhPersontrangchu.jpg"/>' alt="Image">
                        <!-- <div class="slider__info">
                            <h2>Animal 2</h2>
                        </div> -->
                    </div>
                    <div class="slider__item">
                        <img class="slider__image" src='<c:url value ="/template/web/images/mkinhGivenchytrangchu.jpg"/>' alt="Image">
                        <!-- <div class="slider__info">
                            <h2>Animal 3</h2>
                        </div> -->
                    </div>
                    <div class="slider__item">
                        <img class="slider__image" src='<c:url value ="/template/web/images/mkinhBurberrytrangchu.jpg"/>' alt="Image">
                        <!-- <div class="slider__info">
                            <h2>Animal 4</h2>
                        </div> -->
                    </div>
                    <div class="slider__item">
                        <img class="slider__image" src='<c:url value ="/template/web/images/mkinhDiortrangchu.jpg"/>' alt="Image">
                        <!-- <div class="slider__info">
                            <h2>Animal 5</h2>
                        </div> -->
                    </div>
                    <div class="slider__item">
                        <img class="slider__image" src='<c:url value ="/template/web/images/mkinhPradatrangchu.jpg"/>' alt="
                    Image">
                        <!-- <div class="slider__info">
                            <h2>Animal 6</h2>
                        </div> -->
                    </div>
                    <div class="slider__item">
                        <img class="slider__image" src='<c:url value ="/template/web/images/mkinhPersontrangchu.jpg"/>' alt="Image">
                        <!-- <div class="slider__info">
                            <h2>Animal 7</h2>
                        </div> -->
                    </div>
                    <div class="slider__item">
                        <img class="slider__image" src='<c:url value ="/template/web/images/mkinhBurberrytrangchu.jpg"/>' alt="Image">
                        <!-- <div class="slider__info">
                            <h2>Animal 8</h2>
                        </div> -->
                    </div>
                    <div class="slider__item">
                        <img class="slider__image" src='<c:url value ="/template/web/images/mkinhHermèstrangchu.jpg"/>' alt="Image">
                        <!-- <div class="slider__info">
                            <h2>Animal 9</h2>
                        </div> -->
                    </div>
                    <div class="slider__item">
                        <img class="slider__image" src='<c:url value ="/template/web/images/mat kinh fendi 4.jpg"/>'  alt="Image">
                        <!-- <div class="slider__info">
                            <h2>Animal 10</h2>
                        </div> -->
                    </div>
                </div>
                <div class="slider__nav" style="display: flex;justify-content: center;">
                    <button class="slider__nav__button" x-on:click="$refs.slider.scrollBy({left: $refs.slider.offsetWidth * -1, behavior: 'smooth'});" x-bind:class="start ? '' : 'slider__nav__button--active'"> <span style="font-size: 10px;"> < </span> </button>
                    <button class="slider__nav__button" x-on:click="$refs.slider.scrollBy({left: $refs.slider.offsetWidth, behavior: 'smooth'});" x-bind:class="end ? '' : 'slider__nav__button--active'"> <span style="font-size: 10px;"> > </span> </button>
                </div>
            </div>
        </div>
    </div>
   </div>
   </div>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/alpinejs/3.10.2/cdn.js"></script>
</body>

</html>