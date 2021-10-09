<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/board/boardList.css">
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
					<h1 class="h3 mb-2 text-gray-800">공지사항</h1>
					<p class="mb-4"></p>
					<table class="table table-hover">
						<tbody>
<%-- 							<c:forEach items="${ noticeList }" var="notice">
								<tr>
									<td colspan="3"><a id="a1"><c:out value="${ boardTitle }"/></td>
									<td><c:out value="${ boardId }"/></td>
									<td><c:out value="${ boardHit }"/></td>
								</tr>
							</c:forEach> --%>
							 <tr>
								<td colspan="3"><a id="a1">[이벤트
										발표] LUCKY DRAW - 나이키 x 오프화이트 덩크로우 로트 50 & 샤넬 클래식 파우치</a></td>
								<td>작성자</td>
								<td>작성일</td>
								<td>조회수</td>
							</tr>
							 <tr>
								<td colspan="3">[이벤트 발표] LUCKY DRAW - 나이키 x 오프화이트 덩크로우 로트
									46 & 베어브릭 x 카카오 라이언 400%</td>
								<td>작성자</td>
								<td>작성일</td>
								<td>조회수</td>
							</tr>
						</tbody>
					</table>

					<!-- 페이징처리 넣기 -->
					<div class="paging">
						<a href="#" class="btn_arr first"><i
							class="fa fa-chevron-left" aria-hidden="true"></i><span
							class="hide">처음페이지</span></a> <a href="#" class="btn_arr prev"><i
							class="fa fa-chevron-left" aria-hidden="true"></i><span
							class="hide">이전페이지</span></a> <a href="#" class="on">1</a>
						<!-- D : 활성화페이지일 경우 : on 처리 -->
						<a href="#">2</a> <a href="#">3</a> <a href="#">4</a> <a href="#">5</a>
						<a href="#" class="btn_arr next"><i
							class="fa fa-chevron-right" aria-hidden="true"></i><span
							class="hide">다음페이지</span></a> <a href="#" class="btn_arr last"><i
							class="fa fa-chevron-right" aria-hidden="true"></i><span
							class="hide">마지막페이지</span></a>
					</div>

					<!-- 관리자 확인 -->
					<!-- 로그인 정보 넘어오는 거 보고 바꾸기 -->
					<!-- 로그인이 안된 상태에서는 sessionScope가 null,,? 에러나나?? -->
					<%-- <c:if test="${ sessionScope.entryMember.role eq 'Y'}"> --%>
						<div style="text-align: center; margin-top: 20px;">
							<a href="#" class="namoon" onclick="location.href='/TheShoes/board/reg';">등록하기</a>
						</div>
					<%-- </c:if> --%>
				</div>
			</div>
		</div>
		<!-- 자자 해보자 -->
	</section>

	<!-- footer -->
	<jsp:include page="../common/footer.jsp" />
	
	<script src="${ pageContext.servletContext.contextPath }/resources/js/board/boardList.js"></script>
</body>
</html>
