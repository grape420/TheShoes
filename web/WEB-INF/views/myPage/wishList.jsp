<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/myPage/wishList.css">
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

				<!-- Main Content -->
				<div id="content">
					<!-- Begin Page Content -->
					<div class="container-fluid">

						<!-- Page Heading -->
						<br>
						<h1 class="h3 mb-2 text-gray-800">관심상품</h1>
						<br />
						<!-- 관심상품 리스트 -->
						<div class="cart-list" data-order="">
							<c:if test="${ !empty wishList }">
							<c:forEach var="wish" items="${ wishList }" begin="${ selectCriteria.startRow - 1 }" end="${ selectCriteria.endRow - 1 }">
								<div class="item-info">
									<div class="img-wrap">
										<a href="/kr/launch/t/men/fw/nike-sportswear/DD1391-003/iljl65/nike-dunk-low-retro">
											<img src="${ pageContext.servletContext.contextPath }/resources/upload/image/shoes/${ wish.shoes.thumbList[0].savedName }" />
										</a>
									</div>
									<div class="info-wrap">
										<span class="tit">
										<a class="text-black" href="/kr/launch/t/men/fw/nike-sportswear/DD1391-003/iljl65/nike-dunk-low-retro">${ wish.shoes.shoesModel }</a>
										</span> 
										<span class="opt">${ wish.shoes.category.shoesCategoryName }</span>
										<div class="right_btm">
											<a href="#n" class="price">
												<em>구매</em>
												<span class="price_num"><fmt:formatNumber value="${ wish.shoes.shoesPrice }" pattern="#,###,###"></fmt:formatNumber> 원</span>
											</a>

											<a href="${ pageContext.servletContext.contextPath }/myPage/wishList?currentPage=${ selectCriteria.pageNo }&delete=${ wish.wishNo }">
											<button id="deleteBtn" type="button" class="delete">삭제</button></a>

										</div>
									</div>
								</div>
							</c:forEach>
							</c:if>
						</div>
						<!-- //관심상품 리스트 -->
						<!-- paging -->
						<jsp:include page="../board/paging.jsp"/>

						<!-- //paging -->
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- footer -->
	<jsp:include page="../common/footer.jsp" />

	<script src="${ pageContext.servletContext.contextPath }/resources/js/myPage/myProfile.js"></script>
	
	<script>
	let flag = "${ requestScope.deleteRequest }";
	
		if(flag == "0") {
			alert("관심 품목이 정삭적으로 삭제되었습니다.");
		}
	</script>
</body>
</html>