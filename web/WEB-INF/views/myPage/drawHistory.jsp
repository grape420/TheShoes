
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.Date" %>

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
				<a class="sidebar-brand d-flex align-items-center justify-content-center" href="${ pageContext.servletContext.contextPath }/myPage/drawHistory">
					<div class="sidebar-brand-icon rotate-n-15">
					</div>
					<div class="sidebar-brand-text mx-3">MY PAGE</div>
				</a>

				<!-- Divider -->
				<hr class="sidebar-divider my-0">

				<!-- Divider -->
				<hr class="sidebar-divider">

				<!-- Nav Item - Pages Collapse Menu -->
				<li class="nav-item"><a class="nav-link collapsed" href="#"	data-toggle="collapse" data-target="#collapseTwo"
					aria-expanded="true" aria-controls="collapseTwo"> 
					<i class="fas fa-fw fa-cog"></i> 
					<span>쇼핑정보</span>
				</a>
					<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"	data-parent="#accordionSidebar">
						<div class="bg-white py-2 collapse-inner rounded">
							<a class="collapse-item" href="${ pageContext.servletContext.contextPath }/myPage/drawHistory">응모.구매 내역</a> 
							<a class="collapse-item" href="${ pageContext.servletContext.contextPath }/myPage/salesHistory">판매 내역</a> 
							<a class="collapse-item" href="${ pageContext.servletContext.contextPath }/myPage/wishList">관심 상품</a>
						</div>
					</div>
					</li>
				<!-- Nav Item - Utilities Collapse Menu -->
				<li class="nav-item"><a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
					aria-expanded="true" aria-controls="collapseUtilities"> 
				<i class="fas fa-fw fa-wrench"></i> 
					<span>나의정보</span>
				</a>
					<div id="collapseUtilities" class="collapse"
						aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
						<div class="bg-white py-2 collapse-inner rounded">
							<a class="collapse-item" href="${ pageContext.servletContext.contextPath }/common/nav?no=3">프로필 정보</a> 
							<a class="collapse-item" href="${ pageContext.servletContext.contextPath }/myPage/address">주소록</a> 
							<a class="collapse-item" href="${ pageContext.servletContext.contextPath }/common/nav?no=2">회원 탈퇴</a>
						</div>
					</div>
				</li>
				<!-- Divider -->
				<hr class="sidebar-divider">
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

							<c:forEach  varStatus ="st" var="draw" items="${ requestScope.drawHistory }" begin="${ selectCriteria.startRow - 1 }" end="${ selectCriteria.endRow - 1 }">
							<div class="order-list" data-order="">
								<div class="header">
									<span class="order-code">응모일시 <fmt:formatDate value="${ draw.eventDate }" type="date" pattern="yyyy.MM.dd HH:mm:ss"/></span> 
									<span class="btn-order-detail thedraw">
										<c:choose>
											<c:when test="${ draw.eventStatus eq 1}">미당첨</c:when>
											<c:when test="${ draw.eventStatus eq 2}">비구매</c:when>
										    <c:when test="${ draw.eventStatus eq 3}">상품 준비 중</c:when>
										    <c:when test="${ draw.eventStatus eq 4}">배송 중</c:when>
										    <c:when test="${ draw.eventStatus eq 5}">배송 완료</c:when>
										</c:choose>
									</span>
								</div>
								<div class="order-item-wrap thedraw-item">
									<div class="item-info">
										<div class="img-wrap">

											<!-- 해당 신발 상세 정보 페이지로 이동 -->
											<a href="${ pageContext.servletContext.contextPath }/shoes/detail?no=${ draw.shoes.shoesNo }">
												<!-- ${ draw.shoes.thumbList[0].savedName } -->
												<img src="${ pageContext.servletContext.contextPath }/resources/upload/image/shoes/${ draw.shoes.thumbList[0].savedName }" />
											</a>
										</div>
										<div class="info-wrap">
											<span class="tit" style="font-size:15px;"> 
	
											<!-- 해당 신발 상세 정보 페이지로 이동 -->
											<a href="${ pageContext.servletContext.contextPath }/shoes/detail?no=${ draw.shoes.shoesNo }">${ draw.shoes.shoesModel }</a>
											</span> 
											<span class="opt" style="font-size:13px;">${ draw.shoes.category.shoesCategoryName }</span>
											<span class="price-wrap"> 
											<span class="price"><fmt:formatNumber value="${ draw.shoes.shoesPrice }" pattern="#,###,###"/> 원</span>
											</span>
										</div>
									</div>
									
									<!-- ${ draw.eventStatus eq '당첨' } -->
							   	    <c:if test="${ draw.eventStatus ne 1 }">
									<div class="item-status date-type">
	
										<span class="status"> 
											<span class="lable">응모 기간</span> 
											
											<span class="date" style="display: inline-block; width: 100%">
												<fmt:formatDate value="${ draw.shoes.startDate }" type="date" pattern="yyyy.MM.dd HH:mm"/> - <fmt:formatDate value="${ draw.shoes.endDate }" type="date" pattern="yyyy.MM.dd HH:mm"/></span>
										</span> 
										<span class="status"> 
											<span class="lable">당첨 발표일</span>
											<span class="date" style="display: inline-block; width: 100%">
												<fmt:formatDate value="${ draw.shoes.winnerDate }" type="date" pattern="yyyy.MM.dd HH:mm"/>
											</span>
										</span> 
										<span class="status"> 
											<span class="lable">구매 기간</span>
											<span class="date" style="display: inline-block; width: 100%"> 
											
												<!-- 구매 가능 기간 -->
												<fmt:formatDate value="${ draw.shoes.winnerDate }" type="date" pattern="yyyy.MM.dd HH:mm"/> - <fmt:formatDate value="${ requestScope.canBuyDate[st.index] }" type="date" pattern="yyyy.MM.dd HH:mm"/>
											</span>
										</span>
									</div>
									</c:if>
								</div>
								<div class="btn-wrap">
									<span class="status"> 
										<span class="btn-link line-thin border-top large width-max">
											<c:choose>
												<c:when test="${ draw.shoes.eventEndYn eq 'Y'}">THE DRAW 종료</c:when>
												<c:when test="${ draw.shoes.eventEndYn eq 'N'}">THE DRAW 진행 중</c:when>
											</c:choose>
										</span>
									</span>
								</div>
							</div>
							</c:forEach>
	
							<!-- paging -->
							<jsp:include page="../board/paging.jsp"/>
	
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