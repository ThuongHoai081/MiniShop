<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<body>
<div class = "lienhe">
   <div class="lienhe-content-div1">
        <div class="lienhe-content-div1-left">
            <h2>Đăng kí tư vấn dịch vụ</h2>
            <form>
                <div class="lienhe-form-group">
                <input type="text" id="hoTen" name="hoTen" placeholder="Họ Và Tên" required>
                </div>
                <div class="lienhe-form-group">
                  <input type="text" id="soDienThoai" name="soDienThoai" placeholder="Số Điện Thoại" required>
                </div>
                <div class="lienhe-form-group">
                  <input type="email" id="email" name="email" placeholder="Email" required>
                </div>
                <div class="lienhe-form-group">
                  <textarea id="ghiChu" name="ghiChu" placeholder="Ghi chú vấn đề cần tư vấn"></textarea>
                </div>
                <div class="lienhe-form-group">
                  <button type="submit"><i class="fa-solid fa-paper-plane"></i> Gửi</button>
                  
                </div>
              </form>
              
        </div>
        <div class="lienhe-content-div1-right">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3835.733396391823!2d108.24978007479659!3d15.975293084690692!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3142108997dc971f%3A0x1295cb3d313469c9!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBDw7RuZyBuZ2jhu4cgVGjDtG5nIHRpbiB2w6AgVHJ1eeG7gW4gdGjDtG5nIFZp4buHdCAtIEjDoG4!5e0!3m2!1svi!2s!4v1684747988837!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
    </div>
      </div>
</body>
 
</html>