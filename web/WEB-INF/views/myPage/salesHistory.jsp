<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="shortcut icon" href="${ pageContext.servletContext.contextPath }/resources/uses/the-shoes-favicon.png">
<link href="${ pageContext.servletContext.contextPath }/resources/uses/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<link href="${ pageContext.servletContext.contextPath }/resources/uses/css/sb-admin-2.min.css" rel="stylesheet">
<link href="${ pageContext.servletContext.contextPath }/resources/uses/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
<link rel="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/myPage/resellHistory.css" >
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
			<ul	class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

				<!-- Sidebar  -->
				<a  class="sidebar-brand d-flex align-items-center justify-content-center"	href="index.html">
					<div class="sidebar-brand-icon rotate-n-15"> </div>
					<div class="sidebar-brand-text mx-3">MY PAGE</div>
				</a>
				<!-- Divider -->
				<hr class="sidebar-divider my-0">
				<!-- Divider -->
				<hr class="sidebar-divider">
				<!-- Nav Item - Pages Collapse Menu -->
				<li class="nav-item">
				<a class="nav-link collapsed" href="#"	data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo"> 
				<i class="fas fa-fw fa-cog"></i> 
				<span>쇼핑정보</span>
				</a>
					<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"	data-parent="#accordionSidebar">
						<div class="bg-white py-2 collapse-inner rounded">
							<a class="collapse-item" href="${ pageContext.servletContext.contextPath }/myPage/drawHistory">응모 내역</a> 
							<a class="collapse-item" href="${ pageContext.servletContext.contextPath }/myPage/salesHistory">구매 내역</a> 
							<a class="collapse-item" href="${ pageContext.servletContext.contextPath }/myPage/resellHistory">판매 내역</a> 
							<a class="collapse-item" href="${ pageContext.servletContext.contextPath }/myPage/wishList">관심 상품</a>
						</div>
					</div>
					</li>
				<!-- Nav Item - Utilities Collapse Menu -->
				<li class="nav-item"><a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities"> 
				<i class="fas fa-fw fa-wrench"></i> 
					<span>나의정보</span>
				</a>
					<div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
						<div class="bg-white py-2 collapse-inner rounded">
							<a class="collapse-item" href="${ pageContext.servletContext.contextPath }/common/nav?no=3">프로필 정보</a> 
							<a class="collapse-item" href="${ pageContext.servletContext.contextPath }/myPage/address">주소록</a> 
							<a class="collapse-item" href="${ pageContext.servletContext.contextPath }/common/nav?no=2">회원 탈퇴</a>
						</div>
					</div>
				</li>
				
				<!-- Divider -->
				<hr class="sidebar-divider">

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
					<h1 class="h3 mb-2 text-gray-800">THE SHOES 판매내역</h1>
					<p class="mb-4">THE SHOES 리셀 판매내역 조회 가능합니다.</p>

					<!-- DataTales Example -->
					<div class="order-filter" data-module-date-filter-thedraw="">
				
						<div>
							<!--  판매 리스트  -->
							<div class="sales-list" data-order="">
							<c:forEach var="sales" items="${ requestScope.salesList }" begin="${ selectCriteria.startRow - 1 }" end="${ selectCriteria.endRow - 1 }">
								<div class="header">
									<span class="order-code">(게시글 작성일자 (BOARD_REGDATE))판매일시 2021.08.13 10:14:16<c:out value= "${ salesList.boardregdate }"/></span>
								</div>
								<div class="order-item-wrap thedraw-item">
									<div class="item-info">
										<div class="img-wrap">
												<img src="${ pageContext.servletContext.contextPath }/resources/upload/image/shoes/" /> 
								         </div>
								<div class="info-wrap">
									 <span class="tit"> <a>에어 조던 1 로우 OG SP(판매 게시글 제목(BOARD_TITLE))</a> <c:out value="${ salesList.boardTitle }"/> </span> 
									 <span class="opt">DM7866-140 / 260 (내용(BOARD_CONTENT))<c:out value="${ salesList.boardContent }"/></span> 
								</div>
								<div class="btnDiv">
									  <button type="button" class="btn btn-outline-dark">게시글 이동</button>
								</div>
								    </div>
								</div>
							</div>
						</c:forEach>
						
						
							<div class="order-list" data-order="">
								<div class="header">
									<span class="order-code">판매일시 2021.08.13 10:14:16</span>
								</div>
								<div class="order-item-wrap thedraw-item">
									<div class="item-info">
										<div class="img-wrap">
											<a
												href="/kr/launch/t/men/fw/basketball/DM7866-140/cuwc56/air-jordan-1-low-og-sp">
												<img
												src="https://static-breeze.nike.co.kr/kr/ko_kr/cmsstatic/product/DM7866-140/12d6c862-ec81-46b8-adaa-f6edf708a603_primary.jpg?browse" />
											</a>
										</div>
										<div class="info-wrap">
											<span class="tit"> <a
												href="/kr/launch/t/men/fw/basketball/DM7866-140/cuwc56/air-jordan-1-low-og-sp">에어
													조던 1 로우 OG SP</a>
											</span> <span class="opt">DM7866-140 / 260</span> <span
												class="price-wrap"> <span class="price">189,000
													원</span>
											</span>
										</div>
										<div class="btnDiv">
											<button type="button" class="btn btn-outline-dark">후기
												작성</button>
											<button type="button" class="btn btn-outline-dark">후기
												게시글</button>
										</div>
									</div>
								</div>
							</div>

							
							<!-- paging -->

							<div class="paging">
								<a href="#" class="btn_arr first"><i
									class="fa fa-chevron-left" aria-hidden="true"></i><span
									class="hide">처음페이지</span></a> <a href="#" class="btn_arr prev"><i
									class="fa fa-chevron-left" aria-hidden="true"></i><span
									class="hide">이전페이지</span></a> <a href="#" class="on">1</a>
								<!-- D : 활성화페이지일 경우 : on 처리 -->
								<a href="#">2</a> <a href="#">3</a> <a href="#">4</a> <a
									href="#">5</a> <a href="#" class="btn_arr next"><i
									class="fa fa-chevron-right" aria-hidden="true"></i><span
									class="hide">다음페이지</span></a> <a href="#" class="btn_arr last"><i
									class="fa fa-chevron-right" aria-hidden="true"></i><span
									class="hide">마지막페이지</span></a>
							</div>

							<!-- //paging -->
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 자자 해보자 -->

	</section>

	<!-- footer -->
	<jsp:include page="../common/footer.jsp" />

</body>
</html>