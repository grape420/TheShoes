<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/cs/regQuestion.css">
<link rel="shortcut icon" href="${ pageContext.servletContext.contextPath }/resources/uses/the-shoes-favicon.png">
<link href="${ pageContext.servletContext.contextPath }/resources/uses/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<link href="${ pageContext.servletContext.contextPath }/resources/uses/css/sb-admin-2.min.css" rel="stylesheet">
<link href="${ pageContext.servletContext.contextPath }/resources/uses/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>THE SHOES</title>
</head>
<body>
	<!-- header -->
	<jsp:include page="../common/header.jsp" />
	<!-- section -->
	<section>
		<!-- Page Wrapper -->
		<div id="wrapper">

			<!-- Sidebar -->
			<ul
				class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
				id="accordionSidebar">

				<!-- Sidebar - Brand -->
				<a
					class="sidebar-brand d-flex align-items-center justify-content-center"
					href="index.html">
					<div class="sidebar-brand-icon rotate-n-15">
					</div>
					<div class="sidebar-brand-text mx-3">NOTICE</div>
				</a>

				<!-- Divider -->
				<hr class="sidebar-divider my-0">

				<!-- Divider -->
				<hr class="sidebar-divider">

				<!-- Nav Item - Pages Collapse Menu -->
				<li class="nav-item"><a class="nav-link collapsed" href="#"
					data-toggle="collapse" data-target="#collapseTwo"
					aria-expanded="true" aria-controls="collapseTwo"> <i
						class="fas fa-fw fa-folder"></i> <span>고객센터</span>
				</a>
					<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
						data-parent="#accordionSidebar">
						<div class="bg-white py-2 collapse-inner rounded">
							<a class="collapse-item" href="notice.html">공지사항</a> <a
								class="collapse-item" href="FAQ2.html">FAQ</a> <a
								class="collapse-item" href="1dae1_list.html">1:1 문의</a>
						</div>
					</div></li>

				<!-- Divider -->
				<hr class="sidebar-divider">

				<!-- Heading -->

				<!-- Sidebar Toggler (Sidebar) -->
				<div class="text-center d-none d-md-inline">
					<button class="rounded-circle border-0" id="sidebarToggle"></button>
				</div>

			</ul>
			<!-- End of Sidebar -->

			<!-- 자자 해보자 -->
			<!-- Content Wrapper -->
			<div id="content-wrapper" class="d-flex flex-column">

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<br>
					<div class="container">
						<h1 class="h3 mb-2 text-gray-800">1:1 문의</h1>
						<p class="mb-4"></p>
						<form
							action="${ pageContext.servletContext.contextPath }/thumbnail/insert"
							method="post" encType="multipart/form-data">
							<div class="row">
								<div class="col-md-6 mb-3">
									<label>카테고리</label> <select class="custom-select d-block w-100"
										id="category" name="category" required>
										<option value="1">구매</option>
										<option value="2">판매</option>
										<option value="3">일반</option>
									</select>
								</div>
								<div class="col-md-6 mb-3">
									<label>제목</label> <input type="text" class="form-control"
										id="title" placeholder="" name="title" required>
								</div>
	
								<div class="col-md-12">
									<label>내용</label>
									<textarea class="form-control" id="exampleFormControlTextarea1"
										rows="20"></textarea>
								</div>
	
								<div class="col-md-6 mb-3">
									<label style="margin: 10px 0;">사진 첨부</label>
									<div id="titleImgArea">
										<img id="titleImg" class="title-img-area" width="300"
											height="300">
									</div>
								</div>
								<div class="col-md-6 mb-3"></div>
							</div>
	
							<div class="thumbnail-file-area">
								<input type="file" id="thumbnailImg1" name="thumbnailImg1"
									onchange="loadImg(this,1)">
							</div>
						</form>
						<div class="col-md-12 mb-3">
							<button type="submit" id="registBtn" onclick="registBtn_click();"
								class="btn btn-outline-secondary">등록</button>
						</div>
					</div>



					<!-- //paging -->
				</div>
			</div>
		</div>
		<!-- 자자 해보자 -->
	</section>
	<!-- footer -->
	<jsp:include page="../common/footer.jsp" />
	
	<script src="${ pageContext.servletContext.contextPath }/resources/js/cs/regQuestion.js"></script>

</body>
</html>