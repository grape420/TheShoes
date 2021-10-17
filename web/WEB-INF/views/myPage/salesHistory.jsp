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
				<a  class="sidebar-brand d-flex align-items-center justify-content-center"	href="${ pageContext.servletContext.contextPath }/myPage/drawHistory">
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
							<a class="collapse-item" href="${ pageContext.servletContext.contextPath }/myPage/drawHistory">응모.구매 내역</a> 
							<a class="collapse-item" href="${ pageContext.servletContext.contextPath }/myPage/salesHistory">판매 내역</a> 
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
			</ul>
				<!-- End of Sidebar -->

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
							<div class="order-list" >
							<c:forEach var="sales" items="${ requestScope.salesList }" >
								<div class="header">
									<span class="order-code"> 판매일시 <c:out value= "${ sales.boardRegDate }"/></span>
								</div>
								<div class="order-item-wrap thedraw-item">
									<div class="item-info">
										<div class="img-wrap">
											<img src="${ pageContext.servletContext.contextPath }/resources/upload/image/resellShoes/${ sales.resellThumb[0].savedName }"/> 
								        </div>
								<div class="info-wrap">
									 <span class="tit"><c:out value="${ sales.boardTitle }"/></span> 
									 <span class="opt"><c:out value="${ sales.boardContent }"/></span> 
								</div>
								<div class="btnDiv">
									<a type="button" class="btn btn-outline-dark" href="${ pageContext.servletContext.contextPath }/resell/detail?no=${ sales.boardNo }">게시글 이동</a>
								</div>
								  </div>
								</div>
							</c:forEach>
							</div>
							<!-- paging -->
							<jsp:include page="paging.jsp" />
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