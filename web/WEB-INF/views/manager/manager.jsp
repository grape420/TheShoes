<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/manager/manager.css">
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
				<a class="sidebar-brand d-flex align-items-center justify-content-center" href="${ pageContext.servletContext.contextPath }/manager/shoes">
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

				<!-- Heading -->

				

			</ul>



			<!-- Content Wrapper -->
			<div id="content-wrapper" class="d-flex flex-column">

				<!-- Main Content -->
				<div id="content">

					<!-- Begin Page Content -->
					<div class="container-fluid">

						<!-- Page Heading -->
						<h1 class="h2 mb-4 text-gray-800">회원 정보 관리</h1>
						<p class="mb-4">회원 정보들을 관리할 수 있는 관리자 페이지입니다.</p>

						<!-- DataTales Example -->
						<div class="card shadow mb-4">
							<div class="card-body">
								<div class="table-responsive">
									<table class="table table-bordered" width="100%"
										cellspacing="0">
										<thead>
											<tr style="background-color : black; color : white;">
												<th style="width: 150px; text-align : center;">회원아이디</th>
												<th style="width: 150px; text-align : center;">회원이름</th>
												<th style="width: 150px; text-align : center;">E-MAIL</th>
												<th style="width: 150px; text-align : center;">휴대폰번호</th>
												<th style="width: 150px; text-align : center;">가입일자</th>
												<th style="width: 150px; text-align : center;">생년월일</th>
												<th style="width: 150px; text-align : center;">권한</th>
												<th style="width: 150px; text-align : center;">탈퇴 여부 </th>
												<th style="width: 150px; text-align : center;">블랙리스트 여부</th>
												<th style="width: 150px; text-align : center;">블랙리스트 사유</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="member" items="${ requestScope.memberList }">										
													<tr style="cursor: pointer;">
														<td style="text-align: center;"><label><c:out value="${ member.id }"/></label></td>
														<td style="text-align: center;"><c:out value="${ member.name }"/></td>
														<td style="text-align: center;"><c:out value="${ member.email }"/> </td>
														<td style="text-align: center;"><c:out value="${ member.phone }"/></td>
														<td style="text-align: center;"><fmt:formatDate value="${ member.enrollDate }" type="date" pattern="yyyy/MM/dd"/></td>
														<td style="text-align: center;"><c:out value="${ member.birth }"/></td>
														<td style="text-align: center;"><c:out value="${ member.role }"/></td>
														<td style="text-align: center;"><c:out value="${ member.withDrawYn }"/></td>
														<td style="text-align: center;"><c:out value="${ member.blackListYn }"/></td>
														<td style="text-align: center;">
														<c:if test="${ member.blackListYn eq 'Y' }">
														<c:out value="${ member.blackReason }"/>
														</c:if>
														</td>
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
			<!-- End of Page Wrapper -->

		</div>
		<!-- End of Content Wrapper -->

	</section>

	<script type="text/javascript">
		$("tr").click(function() {
			let memberId = $(this).find("label").text();
			location.href = "${ pageContext.servletContext.contextPath }/manager/modMember?memberId=" + memberId; 
		});
	</script>
	<!-- footer -->
	<jsp:include page="../common/footer.jsp" />
</body>
</html>