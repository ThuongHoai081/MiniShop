<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
   <div>
  
    <div id="carouselExampleIndicators" class="carousel slide" style="margin-top: 100px; ">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"
                aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
                aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
                aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
             <img src= '<c:url value ="/template/web/images/indexjpg.jpg"/>' class="d-block w-100" alt="..." >         
            </div>
            <div class="carousel-item">
            <img src= '<c:url value ="/template/web/images/main.png"/>' class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
            <img src= '<c:url value ="/template/web/images/index2jpg.jpg" />' class="d-block w-100" alt="...">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
            data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
            data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

    <div class="review">

        <div class="review-h1">
            <h2><i>Chúng tôi xin trân trọng giới thiệu đến quý khách hàng<br>
                    bộ sưu tập mắt kính đa dạng và độc đáo tại cửa hàng chúng tôi...</i></h2>
        </div>
        <div style="margin-top: 20px;" class="review-h2">
            <h1><i>-- TỪ CÁC THƯƠNG HIỆU NỔI TIẾNG --</i></h1>
        </div>
        <div class="review-thuonghieu">
            <div class="review-thuonghieu-left">
                <div class="review-thuonghieu-left-bg">
                <img src= '<c:url value ="/template/web/images/nenxanh.png"/>'>
                    <div class="review-thuonghieu-left-text">
                        <b><i>GUCCI</i></b>
                    </div>
                </div>
            </div>
            <div class="review-thuonghieu-right">
              <img src= '<c:url value ="/template/web/images/guccihome.jpg" />'>
            </div>
        </div>
        
        <div class="review-thuonghieu">
            <div class="review-thuonghieu-right">
            <img src= '<c:url value ="/template/web/images/diorhome.jpg"/>'>
            </div>
            <div class="review-thuonghieu-left">
                <div class="review-thuonghieu-left-bg">
                    <img src= '<c:url value ="/template/web/images/nenxanh.png"/>'>
                    <div class="review-thuonghieu-left-text">
                        <b><i>CHRISTIAN DIOR</i></b>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="body" >
    <div class="container my-2 py-4">
      <div class="row justify-content-center">
        <div class="col-lg-7 col-md-8">
          <div class="text-center">
            <h1 class="text-warning" style="font-size: 45px; ">Săn Flash Sale</h1>
              <p class="text-light"style="font-size: 20px;">Hàng trăm sản phẩm bắt trend mới nhất</p>
          </div>
        </div>
      </div>
      <br>

      <div class="slider">
        <div class="mx-3">
          <div class="card border-0 rounded-0"
            style="background-image:url('<c:url value ="/template/web/images/im.jpg"/>');background-size: cover;">
            <div class="d-flex bg-opacity-25 justify-content-center align-items-end" style="height: 500px">
              <div class="text-center pb-2 bg-dark w-100 pt-3 bg-opacity-75">
                <a class="text-a">GK-380
                  <div class="div-a">
                    <del>340.000 đ</del>
                    <p>200.000 đ</p>
                  </div>
                </a>
              </div>
            </div>
          </div>
        </div>
       
        <div class="mx-3">
          <div class="card border-0 rounded-0"
            style="background-image:url( '<c:url value ="/template/web/images/imgg.jpg"/>') ;background-size: cover;">
            <div class="d-flex bg-opacity-25 justify-content-center align-items-end" style="height: 500px">
              <div class="text-center pb-2 bg-dark w-100 pt-3 bg-opacity-75">
                <a class="text-a">GK-380
                  <div class="div-a">
                    <del>340.000 đ</del>
                    <p>200.000 đ</p>
                  </div>
                </a>
              </div>
            </div>
          </div>
        </div>
        <div class="mx-3">
          <div class="card border-0 rounded-0"
            style="background-image:url( '<c:url value ="/template/web/images/img.jpg"/>') ;background-size: cover;">
            <div class="d-flex bg-opacity-25 justify-content-center align-items-end" style="height: 500px">
              <div class="text-center pb-2 bg-dark w-100 pt-3 bg-opacity-75">
                <a class="text-a">GK-380
                  <div class="div-a">
                    <del>340.000 đ</del>
                    <p>200.000 đ</p>
                  </div>
                </a>
              </div>
            </div>
          </div>
        </div>
        <div class="mx-3">
          <div class="card border-0 rounded-0"
            style="background-image:url('<c:url value ="/template/web/images/im.jpg"/>');background-size: cover;">
            <div class="d-flex bg-opacity-25 justify-content-center align-items-end" style="height: 500px">
              <div class="text-center pb-2 bg-dark w-100 pt-3 bg-opacity-75">
                <a class="text-a">GK-380
                  <div class="div-a">
                    <del>340.000 đ</del>
                    <p>200.000 đ</p>
                  </div>
                </a>
              </div>
            </div>
          </div>
        </div>
        <div class="mx-3">
          <div class="card border-0 rounded-0"
            style="background-image:url('<c:url value ="/template/web/images/imgg.jpg"/>') ;background-size: cover;">
            <div class="d-flex bg-opacity-25 justify-content-center align-items-end" style="height: 500px">
              <div class="text-center pb-2 bg-dark w-100 pt-3 bg-opacity-75">
                <a class="text-a">GK-380
                  <div class="div-a">
                    <del>340.000 đ</del>
                    <p>200.000 đ</p>
                  </div>
                </a>
              </div>
            </div>
          </div>
        </div>
        <div class="mx-3">
          <div class="card border-0 rounded-0"
            style="background-image:url('<c:url value ="/template/web/images/img.jpg"/>');background-size: cover;">
            <div class="d-flex bg-opacity-25 justify-content-center align-items-end" style="height: 500px">
              <div class="text-center pb-2 bg-dark w-100 pt-3 bg-opacity-75">
                <a class="text-a">GK-380
                  <div class="div-a">
                    <del>340.000 đ</del>
                    <p>200.000 đ</p>
                  </div>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div> 
  </div>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/jquery.slick/1.6.0/slick.min.js"></script>
    <script>
  
      $('.slider').slick({
        centerMode: true,
        dots: true,
        autoplay: true,
        centerPadding: '60px',
        slidesToShow: 3,
        responsive: [{
          breakpoint: 960,
          settings: {
            arrows: false,
            centerMode: true,
            centerPadding: '40px',
            Infinity: true,
            slidesToShow: 1
          },
        }]
      });
  
    </script>
   
</body>


</html>