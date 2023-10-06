<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Danh sách sản phẩm</title>
</head>

<body>
	<form action="<c:url value='/admin-new'/>" id="formSubmit" method="get">
	<div class="main-content">
		<div class="main-content-inner" style="width: 80% ">
			<div class="breadcrumbs ace-save-state" id="breadcrumbs">
				<ul class="breadcrumb">
					<li><i class="ace-icon fa fa-home home-icon"></i> <a href="#">Trang
							chủ</a></li>
				</ul>
				<!-- /.breadcrumb -->
			</div>
			<div class="page-content">
				<div class="row">
					<div class="col-xs-12">
						<div class=" table-responsive">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th>Tên sản phẩm</th>
										<th>số lượng</th>
										<th>giá</th>
										<th>Hình ảnh</th>
										<th>Mô tả ngắn</th>
								
									</tr>
								</thead>
								<tbody>
									<c:forEach var="item" items="${model.listResult}">
										<tr>
											<td>${item.ten_sp}</td>
											<td>${item.so_luong}</td>
											<td>${item.gia}</td>
											<td>${item.hinh_anh}</td>
											<td>${item.mo_ta}</td>
										</tr>
									</c:forEach> 

								</tbody>
							</table>
							<!-- <ul class="pagination" id="pagination"></ul> 
							<input type="hidden" value="" id="page" name="page"/>
							<input type="hidden" value="" id="maxPageItem" name="maxPageItem"/> -->
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
</form>
	<!-- /.main-content -->
     
</body>

</html>