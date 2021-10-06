<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/manager/regShoes.css">
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
						<i class="fas fa-laugh-wink"></i>
					</div>
					<div class="sidebar-brand-text mx-3">MANAGER</div>
				</a>

				<!-- Divider -->
				<hr class="sidebar-divider my-0">

				<!-- Divider -->
				<hr class="sidebar-divider">

				<!-- Nav Item - Pages Collapse Menu -->
				<li class="nav-item"><a class="nav-link collapsed" href="#"
					data-toggle="collapse" data-target="#collapseTwo"
					aria-expanded="true" aria-controls="collapseTwo"> <i
						class="fas fa-fw fa-folder"></i> <span>관리자정보</span>
				</a>
					<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
						data-parent="#accordionSidebar">
						<div class="bg-white py-2 collapse-inner rounded">
							<a class="collapse-item" href="manager_shoes.html">신발 정보 관리</a> <a
								class="collapse-item" href="manager.html">회원 정보 관리</a> <a
								class="collapse-item" href="manager_delivery.html">배송 정보 관리</a>
							<a class="collapse-item" href="manager_board.html">회원 게시글 관리</a>
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

			<!-- Content Wrapper -->
			<div id="content-wrapper" class="d-flex flex-column">

				<!-- Main Content -->
				<div id="content">

					<!-- Begin Page Content -->
					<div style="padding: 0 60px;">

						<!-- Page Heading -->
						<h1 class="h2 mb-4 text-gray-800">신발 등록</h1>
						<p class="mb-4">신발 정보를 등록할 수 있는 페이지입니다.</p>
						<div>

							<form class="needs-validation" novalidate>
								<div class="row">
									<div class="col-md-4 mb-3">
										<label for="country">카테고리</label> <select
											class="custom-select d-block w-100" id="country"
											name="infoCategoryNo" required>
											<option value="1">나이키</option>
											<option value="2">스캇</option>
											<option value="3">Jordan</option>
											<option value="4">사카이</option>
											<option value="5">Dunk</option>
										</select>
										<div class="invalid-feedback">Please select a valid
											country.</div>
									</div>
									<div class="col-md-4 mb-3">
										<label for="lastName">모델명</label> <input type="text"
											class="form-control" id="lastName" placeholder=""
											name="shoesModel" required>
									</div>
									<div class="col-md-4 mb-3">
										<label for="lastName">발매가</label> <input type="number"
											class="form-control" id="lastName" placeholder=""
											name="shoesPrice" required>
									</div>
									<div class="col-md-4 mb-3">
										<label for="firstName">당첨자 발표일</label> <input
											type="datetime-local" class="form-control" id="firstName"
											placeholder="" name="winnerDate" required>
									</div>
									<div class="col-md-4 mb-3">
										<label for="country">판매여부</label> <select
											class="custom-select d-block w-100" id="country"
											name="salesYn" required>
											<option value="yes">Y</option>
											<option value="no">N</option>
										</select>
									</div>

									<div class="col-md-4 mb-3">
										<label for="lastName">수량</label> <input type="number"
											class="form-control" id="lastName" placeholder=""
											name="salesAmount" required>
									</div>
									<div class="col-md-6 mb-3">
										<label for="firstName">응모 시작일</label> <input
											type="datetime-local" class="form-control" id="firstName"
											placeholder="" name="startDate" required>
									</div>
									<div class="col-md-6 mb-3">
										<label for="firstName">응모 종료일</label> <input
											type="datetime-local" class="form-control" id="firstName"
											placeholder="" name="endDate" required>
									</div>


									<!-- 요기다 만들어-->
									<form
										action="${ pageContext.servletContext.contextPath }/thumbnail/insert"
										method="post" encType="multipart/form-data">
										<div class="col-md-12 mb-3">
											<div class="text-center">
												<label style="margin: 10px;">대표 사진</label>
												<div id="titleImgArea">
													<img id="titleImg" class="title-img-area" width="300"
														height="300">
												</div>
											</div>
										</div>

										<div style="display: flex; margin: 10px auto;">
											<div class="text-center">
												<label>사진1</label>
												<div id="contentImgArea1">
													<img id="contentImg1" class="content-img-area1" width="250"
														height="250">
												</div>
											</div>

											<div class="text-center">
												<label>사진2</label>
												<div style="margin: 0 25px;">
													<div id="contentImgArea2">
														<img id="contentImg2" class="content-img-area2"
															width="250" height="250">
													</div>
												</div>
											</div>

											<div class="text-center">
												<label>사진3</label>
												<div id="contentImgArea3">
													<img id="contentImg3" class="content-img-area3" width="250"
														height="250">
												</div>
											</div>

											<div class="text-center">
												<label>사진4</label>
												<div style="margin: 0 25px;">
													<div id="contentImgArea4">
														<img id="contentImg4" class="content-img-area4"
															width="250" height="250">
													</div>
												</div>
											</div>

											<div class="text-center">
												<label>사진5</label>
												<div id="contentImgArea5">
													<img id="contentImg5" class="content-img-area5" width="250"
														height="250">
												</div>
											</div>

										</div>

										<div class="thumbnail-file-area">
											<input type="file" id="thumbnailImg1" name="thumbnailImg1"
												onchange="loadImg(this,1)"> <input type="file"
												id="thumbnailImg2" name="thumbnailImg2"
												onchange="loadImg(this,2)"> <input type="file"
												id="thumbnailImg3" name="thumbnailImg3"
												onchange="loadImg(this,3)"> <input type="file"
												id="thumbnailImg4" name="thumbnailImg4"
												onchange="loadImg(this,4)"> <input type="file"
												id="thumbnailImg5" name="thumbnailImg4"
												onchange="loadImg(this,5)"> <input type="file"
												id="thumbnailImg6" name="thumbnailImg4"
												onchange="loadImg(this,6)">
										</div>
									</form>
									<!-- 요기다 만들어-->

									<div class="col-md-12">
										<label for="shoesTextArea">내용</label>
										<textarea class="form-control" id="shoesTextArea" rows="15"></textarea>
									</div>

									<div class="col-md-12 mb-3">
										<button type="submit" id="registBtn"
											onclick="registBtn_click();"
											class="btn btn-outline-secondary">등록</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- footer -->
	<jsp:include page="../common/footer.jsp" />

	<script
		src="${ pageContext.servletContext.contextPath }/resources/js/manager/regShoes.js"></script>
</body>
</html>