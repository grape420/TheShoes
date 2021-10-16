<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/manager/managerBoard.css">
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
					href="${ pageContext.servletContext.contextPath }/manager/shoes">
					<div class="sidebar-brand-icon rotate-n-15">
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
							<a class="collapse-item" href="${ pageContext.servletContext.contextPath }/manager/shoes">신발 정보 관리</a> 
							<a class="collapse-item" href="${ pageContext.servletContext.contextPath }/manager/memberList">회원 정보 관리</a> 
							<a class="collapse-item" href="${ pageContext.servletContext.contextPath }/manager/delivery">배송 정보 관리</a>
							<a class="collapse-item" href="${ pageContext.servletContext.contextPath }/manager/board">회원 게시글 관리</a>
						</div>
					</div></li>

				<!-- Divider -->
				<hr class="sidebar-divider">

			</ul>

			<!-- Content Wrapper -->
			<div id="content-wrapper" class="d-flex flex-column">

				<!-- Main Content -->
				<div id="content">

					<!-- Begin Page Content -->
					<div class="container-fluid">

						<!-- Page Heading -->
						<h1 class="h2 mb-4 text-gray-800">회원 게시글 관리</h1>
						<p class="mb-4">부적절한 게시글을 관리할 수 있는 관리자 페이지입니다.</p>

						<!-- DataTales Example -->
						<div class="card shadow mb-4">
							<div class="card-body">
								<div class="table-responsive">
									<table class="table table-bordered" width="100%"
										cellspacing="0">
										<thead>
											<tr style="background-color : black; color : white;">
												<th style="width: 150px; text-align : center;">게시글번호</th>
												<th style="width: 150px; text-align : center;">아이디</th>
												<th style="width: 150px; text-align : center;">제목</th>
												<th style="width: 150px; text-align : center;">내용</th>
												<th style="width: 150px; text-align : center;">작성일자</th>
												<th style="width: 150px; text-align : center;">조회수</th>
											</tr>
										</thead>
										<tbody>
												<c:forEach var="board" items="${ requestScope.board }" begin="${ selectCriteria.startRow - 1 }" end="${ selectCriteria.endRow - 1 }">	
													<tr style="cursor: pointer;">
														<td style="text-align: center;"><label><c:out value="${ board.boardNo }"/></label></td>
														<td style="text-align: center;"><c:out value="${ board.boardId }"/></td>
														<td style="text-align: center;"><c:out value="${ board.boardTitle }"/> </td>
														<td style="text-align: center;"><c:out value="${ board.boardContent }"/></td>
														<td style="text-align: center;"><c:out value="${ board.boardRegDate }"/></td>
														<td style="text-align: center;"><c:out value="${ board.boardHit }"/></td>
													</tr>
												</c:forEach>	
										</tbody>
									</table>
								</div>
							</div>
						</div>

					</div>
					
					<!-- /.container-fluid -->
					<jsp:include page="paging.jsp" />
					
				</div>
				<!-- End of Main Content -->
			</div>
			<!-- End of Content Wrapper -->

		</div>
		<!-- End of Page Wrapper -->
	</section>
	
	<script type="text/javascript">
		$("tr").click(function() {
			let categoryOrder = $(this).find("label").text();
			location.href = "${ pageContext.servletContext.contextPath }/resell/detail?categoryOrder=" + categoryOrder; 
		});
	</script>

	<!-- footer -->
	<jsp:include page="../common/footer.jsp" />
</body>
</html>