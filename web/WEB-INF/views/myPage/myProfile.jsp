<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/myPage/myProfile.css">
<link rel="shortcut icon" href="${ pageContext.servletContext.contextPath }/resources/uses/the-shoes-favicon.png">
<link href="${ pageContext.servletContext.contextPath }/resources/uses/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<link href="${ pageContext.servletContext.contextPath }/resources/uses/css/sb-admin-2.min.css" rel="stylesheet">
<link href="${ pageContext.servletContext.contextPath }/resources/uses/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
<link rel="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
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
					<div class="sidebar-brand-text mx-3">MY PAGE</div>
				</a>

				<!-- Divider -->
				<hr class="sidebar-divider my-0">

				<!-- Divider -->
				<hr class="sidebar-divider">

				<!-- Nav Item - Pages Collapse Menu -->
				<li class="nav-item"><a class="nav-link collapsed" href="#"
					data-toggle="collapse" data-target="#collapseTwo"
					aria-expanded="true" aria-controls="collapseTwo"> <i
						class="fas fa-fw fa-folder"></i> <span>쇼핑정보</span>
				</a>
					<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
						data-parent="#accordionSidebar">
						<div class="bg-white py-2 collapse-inner rounded">
							<a class="collapse-item" href="#">응모 내역</a> <a
								class="collapse-item" href="#">구매 내역</a> <a
								class="collapse-item" href="#">판매 내역</a> <a
								class="collapse-item" href="#">관심 상품</a>
						</div>
					</div></li>

				<!-- Nav Item - Utilities Collapse Menu -->
				<li class="nav-item"><a class="nav-link collapsed" href="#"
					data-toggle="collapse" data-target="#collapseUtilities"
					aria-expanded="true" aria-controls="collapseUtilities"> <i
						class="fas fa-fw fa-folder"></i> <span>나의정보</span>
				</a>
					<div id="collapseUtilities" class="collapse"
						aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
						<div class="bg-white py-2 collapse-inner rounded">
							<a class="collapse-item" href="#">프로필 정보</a> <a
								class="collapse-item" href="#">주소록</a> <a class="collapse-item"
								href="#">결제 정보</a> <a class="collapse-item" href="#">회원 탈퇴</a>
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
					<br>
					<div style="padding-left: 50px;">
						<h1 class="h3 mb-2 text-gray-800">프로필 정보</h1>
						<hr>

						<div class="item-info">
							<p class="h5 mb-2 text-gray-900">로그인 정보</p>
							<br> 아이디<br> grape420<br>
						</div>
						<div class="item-info">
							비밀번호<br> <span id="modifiedPwd" class="modifiedPwd">qwerasdf123!@</span>
							<i class="fa fa-eye fa-lg eye"></i>
							<div class="btnArea">
								<button type="submit" class="btn btn-outline-secondary"
									data-toggle="modal" data-target="#exampleModal5"
									data-whatever="@getbootstrap" style="font-size: 13px;">변경</button>

								<!-- modal -->
								<div class="modal fade" id="exampleModal5" tabindex="-1"
									aria-labelledby="exampleModalLabel5" aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title" id="exampleModalLabel5">The
													Shoes</h5>
												<button type="button" class="close" data-dismiss="modal"
													aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
											</div>
											<div class="modal-body">
												<form class="signup-form" action="#" method="POST">
													<input required type="password" name="password"
														id="password" class="form-control"
														placeholder="영문 대 소문+숫자+특수문자 8~16자리"> <br> <input
														required type="password" name="passwordCheck"
														id="passwordCheck" class="form-control"
														placeholder="패스워드를 다시 입력해주세요."> <label
														class="password-result" id="password-result"></label>
												</form>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-secondary"
													data-dismiss="modal">닫기</button>
												<button type="submit" id="pwdBtn" name="pwdBtn"
													class="btn btn-primary" data-dismiss="modal">전송</button>
											</div>
										</div>
									</div>
								</div>
								<!-- modal -->
							</div>
						</div>

						<p class="h5 mt-5 text-gray-900">개인 정보</p>
						<div class="item-info">
							이름<br> 김종현<br>
						</div>

						<div class="item-info">
							휴대폰 번호<br> <span id="phoneNum">01089057678</span>
							<div class="btnArea">
								<button type="submit" class="btn btn-outline-secondary"
									data-toggle="modal" data-target="#exampleModal3"
									data-whatever="@getbootstrap" style="font-size: 13px;">변경</button>
								<!-- modal -->
								<div class="modal fade" id="exampleModal3" tabindex="-1"
									aria-labelledby="exampleModalLabel3" aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title" id="exampleModalLabel3">The
													Shoes</h5>
												<button type="button" class="close" data-dismiss="modal"
													aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
											</div>
											<div class="modal-body">
												<form class="signup-form" action="#" method="POST">
													<label>휴대폰 번호를 입력하세요</label> <input type="text"
														name="phone" id="phone" class="form-control"
														placeholder="휴대폰 번호 '-'표 없이 입력해 주세요."> <label
														class="phone-result" id="phone-result"></label>
												</form>
											</div>

											<div class="modal-footer">
												<button type="button" class="btn btn-secondary"
													data-dismiss="modal">닫기</button>
												<button type="submit" id="telInput" class="btn btn-primary"
													data-dismiss="modal">선택</button>
											</div>
										</div>
									</div>
								</div>
								<!-- modal -->
							</div>
						</div>

						<div class="item-info">
							생년월일<br> <span id="birthDay">1996/04/20</span>
							<div class="btnArea">
								<button type="submit" class="btn btn-outline-secondary"
									data-toggle="modal" data-target="#exampleModal2"
									data-whatever="@getbootstrap" style="font-size: 13px;">변경</button>

								<!-- modal -->
								<div class="modal fade" id="exampleModal2" tabindex="-1"
									aria-labelledby="exampleModalLabel2" aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title" id="exampleModalLabel2">The
													Shoes</h5>
												<button type="button" class="close" data-dismiss="modal"
													aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
											</div>
											<div class="modal-body">
												<form>
													<label>생년 월일을 입력하세요</label> <input type="date"
														class="form-control" id="birth">
												</form>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-secondary"
													data-dismiss="modal">닫기</button>
												<button type="submit" class="btn btn-primary" id="birthBtn"
													data-dismiss="modal">선택</button>
											</div>
										</div>
									</div>
								</div>
								<!-- modal -->
							</div>
						</div>

						<div class="item-info">
							사이즈<br> <span id="shoesSize">280</span><br>
							<div class="btnArea">
								<button type="submit" class="btn btn-outline-secondary"
									data-toggle="modal" data-target="#exampleModal"
									data-whatever="@getbootstrap" style="font-size: 13px;">변경</button>

								<!-- modal -->
								<div class="modal fade" id="exampleModal" tabindex="-1"
									aria-labelledby="exampleModalLabel" aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title" id="exampleModalLabel">The
													Shoes</h5>
												<button type="button" class="close" data-dismiss="modal"
													aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
											</div>
											<div class="modal-body">
												<form class="signup-form" action="#" method="POST">
													<label for="validationDefault04">신발 사이즈를 선택하세요</label> <select
														class="custom-select" id="shoesSelect" required>
														<option selected value="220">220</option>
														<option value="225">225</option>
														<option value="230">230</option>
														<option value="235">235</option>
														<option value="240">240</option>
														<option value="245">245</option>
														<option value="250">250</option>
														<option value="255">255</option>
														<option value="260">260</option>
														<option value="265">265</option>
														<option value="270">270</option>
														<option value="275">275</option>
														<option value="280">280</option>
														<option value="285">285</option>
														<option value="290">290</option>
														<option value="295">295</option>
														<option value="300">300</option>
													</select>
												</form>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-secondary"
													data-dismiss="modal">닫기</button>
												<button type="submit" class="btn btn-primary" id="sizeBtn"
													data-dismiss="modal">선택</button>
											</div>
										</div>
									</div>
								</div>
								<!-- modal -->

							</div>
						</div>
						<br>
						<br> <a href="#"
							style="text-decoration: underline; color: gray; font-size: small;">회원탈퇴</a>

					</div>
				</div>
			</div>
		</div>
		</div>
		<!-- 자자 해보자 -->


		<!-- Scroll to Top Button-->
		<a class="scroll-to-top rounded" href="#page-top"> <i
			class="fas fa-angle-up"></i>
		</a>

	</section>

	<!-- footer -->
	<jsp:include page="../common/footer.jsp" />
	
	<script src="${ pageContext.servletContext.contextPath }/resources/js/myPage/myProfile.js"></script>

</body>
</html>