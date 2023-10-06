<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>

<body>
<div class="giohang">
  <div class="giohang-content-div1">
        <div class="giohang-content-div1-l">
            <div class="giohang-content-div1-l-t">
                <form>
                    <input type="checkbox">
                    <Label style="font-size: 15px;">Chọn tất cả (1 sản phẩm)</Label>
                </form>
            </div>
            <div class="giohang-content-div1-l-b">
              <form action="">
                <table>
                 <tr>
                 <th style="padding-left: 50px;font-size: 15px;">Sản Phẩm  </th>
                 <th style="padding-left: 50px;font-size: 15px;">Tên</th>
                 <th style="padding-left: 50px;font-size: 15px;">Giá</th>
                 <th style="padding-left: 50px;font-size: 15px;">Lượng</th>
                 <th style="padding-left: 50px;font-size: 15px;">Chọn</th>
                 </tr>
                 <tr>
                  <td style="padding-left: 50px;">
                  <img src='<c:url value ="/template/web/images/dior1-removebg-preview.png"/>'>
                  </td>
                  <td style="padding-left: 50px;font-size: 15px;">Dior</td>
                  <td style="padding-left: 50px;font-size: 15px;">100.000đ</td>
                  <td style="padding-left: 50px;font-size: 10px;">
                  <input id="number" type="number" placeholder="1">
                  </td>
                  <td style="padding-left: 50px;font-size: 15px;">
                  <input type="checkbox">
                  </td>
                 </tr>
                </table>
               </form>
            </div>
        </div>
        <div class="giohang-content-div1-r">
          <div class="giohang-content-div1-r-f">
            <p><i class="fa-solid fa-location-dot"></i><b style="margin-left: 5px;">Địa Điểm</b></p>
          <hr>
            <h4 style="margin-top: 20px;"><b>Thông Tin Đơn Hàng</b></h4>
            <p style="margin-top: 20px;">Tạm tính(1 sản phẩm)<b style="margin-left: 100px;">0 đ</b></p>
            <p style="margin-top: 20px;">Phí Vận Chuyển<b style="margin-left: 143px;">0 đ</b></p>
            <div class="giohang-content-div1-r-f-btn">
              <p>Mã giảm giá(Chỉ áp dụng 1 lần)</p>
              <p style="margin-left: 20px;color: aliceblue;background-color: black;">Áp dụng</p>
            </div>
            <p style="margin-top: 20px;"><b style="font-size: 17px;">Tổng cộng</b><b style="margin-left: 170px; color: red;">0 đ</b></p>
            <button>Xác nhận giỏ hàng (0)</button>
          </div>
        </div>
    </div>
 </div>
</body>

</html>