<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/myPage/drawHistory.css">
<link rel="shortcut icon" href="${ pageContext.servletContext.contextPath }/resources/uses/the-shoes-favicon.png">
<link href="${ pageContext.servletContext.contextPath }/resources/uses/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<link href="${ pageContext.servletContext.contextPath }/resources/uses/css/sb-admin-2.min.css" rel="stylesheet">
<link href="${ pageContext.servletContext.contextPath }/resources/uses/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
<link href="${ pageContext.servletContext.contextPath }/resources/uses/css/draw.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>THE SHOES</title>
</head>
<body>
	<!-- header -->
	<jsp:include page="../common/header.jsp"/>
	<section>
	<!-- section -->
		<div id="wrapper">
	
			<!-- Sidebar -->
			<ul
				class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
				id="accordionSidebar">
	
				<!-- Sidebar - Brand -->
				<a
					class="text-white sidebar-brand d-flex align-items-center justify-content-center"
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
						class="fas fa-fw fa-cog"></i> <span class="text-white ">쇼핑정보</span>
				</a>
					<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
						data-parent="#accordionSidebar">
						<div class="bg-white py-2 collapse-inner rounded">
							<a class="collapse-item" href="#">응모 내역</a> <a
								class="collapse-item" href="#">구매 내역</a> <a class="collapse-item"
								href="#">판매 내역</a> <a class="collapse-item" href="#">관심 상품</a>
						</div>
					</div></li>
	
				<!-- Nav Item - Utilities Collapse Menu -->
				<li class="nav-item"><a class="nav-link collapsed" href="#"
					data-toggle="collapse" data-target="#collapseUtilities"
					aria-expanded="true" aria-controls="collapseUtilities"> <i
						class="fas fa-fw fa-wrench"></i> <span class="text-white ">나의정보</span>
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
	
				<!-- Sidebar Toggler (Sidebar) -->
				<div class="text-center d-none d-md-inline">
					<button class="rounded-circle border-0" id="sidebarToggle"></button>
				</div>
			</ul>
			<!-- End of Sidebar -->
	
			<!-- Content Wrapper -->
			<div id="content-wrapper" class="d-flex flex-column">
	
				<!-- Begin Page Content -->
				<div class="container-fluid">
	
					<!-- Page Heading -->
					<br>
					<h1 class="h3 mb-2 text-gray-800">THE SHOES 응모내역</h1>
					<p class="mb-4">최근 2년 이내 THE SHOES 응모내역 조회 가능합니다.</p>
	
					<!-- DataTales Example -->
					<div class="order-filter" data-module-date-filter-thedraw="">
						<div class="uk-grid">
							<div class="sort-tabs" data-type-list="">
								<a class="sort-item active" href="javascript:void(0)"
									data-type="type0">전체(<span>4</span>)
								</a> <a class="sort-item" href="javascript:void(0)" data-type="type1">진행중(<span>0</span>)
								</a> <a class="sort-item" href="javascript:void(0)" data-type="type2">당첨(<span>1</span>)
								</a> <a class="sort-item" href="javascript:void(0)" data-type="type3">미당첨(<span>3</span>)
								</a>
							</div>
						</div>
						<div>
							<br>
							<div class="order-list" data-order="">
								<div class="header">
									<span class="order-code">응모일시 2021.08.02 10:00:46</span> <span
										class="btn-order-detail thedraw"> 미당첨 </span>
								</div>
								<div class="order-item-wrap thedraw-item">
									<div class="item-info">
										<div class="img-wrap">
											<a
												href="/kr/launch/t/men/fw/nike-sportswear/DD1391-003/iljl65/nike-dunk-low-retro">
												<img
												src="https://static-breeze.nike.co.kr/kr/ko_kr/cmsstatic/product/DD1391-003/5e494167-4f6c-4fad-8b0c-04570fc86bf7_primary.jpg?browse" />
											</a>
										</div>
										<div class="info-wrap">
											<span class="tit"> <a
												href="/kr/launch/t/men/fw/nike-sportswear/DD1391-003/iljl65/nike-dunk-low-retro">나이키
													덩크 로우 레트로</a>
											</span> <span class="opt">DD1391-003 / 260</span> <span
												class="price-wrap"> <span class="price">119,000
													원</span>
											</span>
										</div>
									</div>
									<div class="item-status date-type"></div>
								</div>
								<div class="btn-wrap">
									<span class="btn-link line-thin border-top large width-max">THE
										DRAW 종료</span>
								</div>
							</div>
	
							<div class="order-list" data-order="">
								<div class="header">
									<span class="order-code">응모일시 2021.08.13 10:14:16</span> <span
										class="btn-order-detail thedraw"> 당첨 </span>
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
									</div>
	
									<div class="item-status date-type">
	
										<span class="status"> <span class="lable">응모 기간</span> <span
											class="date" style="display: inline-block; width: 100%">2021.08.13
												10:00 ~ 2021.08.13 10:30</span>
										</span> <span class="status"> <span class="lable">당첨 발표일</span>
											<span class="date" style="display: inline-block; width: 100%">2021.08.13
												12:00</span>
										</span> <span class="status"> <span class="lable">구매 기간</span>
											<span class="date" style="display: inline-block; width: 100%">2021.08.13
												12:00 ~ 2021.08.13 14:00</span>
										</span>
									</div>
								</div>
								<div class="btn-wrap">
									<span class="status"> <span
										class="btn-link line-thin border-top large width-max">구매완료</span>
									</span>
								</div>
							</div>
							<div class="order-list" data-order="">
								<div class="header">
									<span class="order-code">응모일시 2021.09.02 10:00:24</span> <span
										class="btn-order-detail thedraw"> 미당첨 </span>
								</div>
								<div class="order-item-wrap thedraw-item">
									<div class="item-info">
										<div class="img-wrap">
											<a
												href="/kr/launch/t/men/fw/nike-sportswear/DH0601-001/nxtg34/nike-dunk-low-retro-prm">
												<img
												src="https://static-breeze.nike.co.kr/kr/ko_kr/cmsstatic/product/DH0601-001/8891d25b-4b4b-453c-9159-099b224aae42_primary.jpg?browse" />
											</a>
										</div>
										<div class="info-wrap">
											<span class="tit"> <a
												href="/kr/launch/t/men/fw/nike-sportswear/DH0601-001/nxtg34/nike-dunk-low-retro-prm">나이키
													덩크 로우 레트로 프리미엄</a>
											</span> <span class="opt">DH0601-001 / 260</span> <span
												class="price-wrap"> <span class="price">129,000
													원</span>
											</span>
										</div>
									</div>
									<div class="item-status date-type"></div>
								</div>
								<div class="btn-wrap">
									<span class="btn-link line-thin border-top large width-max">THE
										DRAW 종료</span>
								</div>
							</div>
							<div class="order-list" data-order="">
								<div class="header">
									<span class="order-code">응모일시 2021.9.24 10:13:12</span> <span
										class="btn-order-detail thedraw"> 미당첨 </span>
								</div>
								<div class="order-item-wrap thedraw-item">
									<div class="item-info">
										<div class="img-wrap">
											<a
												href="/kr/launch/t/men/fw/nike-sportswear/DH2684-400/ivoa29/nike-ldwaffle-sf">
												<img
												src="https://static-breeze.nike.co.kr/kr/ko_kr/cmsstatic/product/DH2684-400/19e847a7-8a65-4907-8903-3bab1be6e5f1_primary.jpg?browse" />
											</a>
										</div>
										<div class="info-wrap">
											<span class="tit"> <a
												href="/kr/launch/t/men/fw/nike-sportswear/DH2684-400/ivoa29/nike-ldwaffle-sf">나이키
													LD와플 x sacai x Fragment</a>
											</span> <span class="opt">DH2684-400 / 260</span> <span
												class="price-wrap"> <span class="price">209,000
													원</span>
											</span>
										</div>
									</div>
									<div class="item-status date-type"></div>
								</div>
								<div class="btn-wrap">
									<span class="btn-link line-thin border-top large width-max">THE
										DRAW 종료</span>
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
								<a href="#">2</a> <a href="#">3</a> <a href="#">4</a> <a href="#">5</a>
								<a href="#" class="btn_arr next"><i
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
	</section>
	<!-- footer -->
	<jsp:include page="../common/footer.jsp" />

</body>
</html>