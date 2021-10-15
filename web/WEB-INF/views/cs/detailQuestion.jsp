<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/cs/detailQuestion.css">
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
					>
					<div class="sidebar-brand-icon rotate-n-15">
					</div>
					<div class="sidebar-brand-text mx-3">1:1문의</div>
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
			              <a class="collapse-item" href="${ pageContext.servletContext.contextPath }/board/list" >공지사항</a>
						  <a class="collapse-item" href="${ pageContext.servletContext.contextPath }/faq/list">FAQ</a> 
						  <a class="collapse-item" href="${ pageContext.servletContext.contextPath }/cs/list">1:1 문의</a>
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
					<div class="container">
						<h1 class="h3 mb-2 text-gray-800">1:1 문의</h1>
						<p class="mb-4"></p>
						<hr>
						
						<!-- 질문 내용 확인 -->
						<div class="bonmun">
						
							<!-- 1:1 제목 -->
							<span style="font-weight:bold;" id="title">${ requestScope.csQuestion.csTitle }</span>
							${ requestScope.requestCount }
							<!-- 작성일 -->
							<p><span id="questionTime">${ requestScope.csQuestion.csRegDate }</span></p>
	
							<!-- 첨부파일 -->
							<div id="titleImgArea">
								<img id="titleImg" class="title-img-area" width="300"
									height="300" src="${ pageContext.servletContext.contextPath }/resources/upload/image/cs/${ requestScope.csQuestion.qtList[0].savedName }"/>
							</div>
							<br>
							
							<!-- 질문 내용 -->
							<div class="realBonmun">${ requestScope.csQuestion.csContent }</div>
							<hr class="mb-4 mt-4">
							
							<!-- 등록된 답변 확인 창 -->
							<!-- 답변 table에 하나 이상의 데이터가 있을 경우 보이게 -->
							<c:if test="${ requestScope.requestCount gt 0 }">
								<div class="bonmun">
            
						          <!-- 답변 작성자 -->
						          <span style="font-weight:bold;"><c:out value="${ requestScope.csRequest.managerId }"/></span>
						          
						          <!-- 답변 작성일 -->  
						          <p><span id="requestTime">${ requestScope.csRequest.requestRegDate }</span></p>
						            
						            <!-- 답변 내용 -->
						            <div class="realBonmun">
						            <c:out value="${ requestScope.csRequest.requestContent}"></c:out>
						            </div>
						          </div>
									<hr class="mb-4 mt-4">
							  </c:if>
							
								<!-- 관리자) 답변 입력 창 -->
								<!-- request 테이블의 데이터가 0개인 경우 보이게 -->
								<c:if test="${ sessionScope.entryMember.role eq 'MANAGER' }">
									<c:if test="${ requestScope.requestCount eq 0 }"> 
										<form class="needs-validation" novalidate action="${ pageContext.servletContext.contextPath }/cs/detail" method="post">
											<div class="row">
												<div class="col-md-12">
													<label for="exampleFormControlTextarea1">내용</label>
													<textarea class="form-control" id="exampleFormControlTextarea1"
														rows="20" name="requestContent"></textarea>
												</div>
												
												<div class="col-md-12" style="text-align: center; padding: 30px;">
													<div class="row"> 
														<div class="col-md-4"></div>
											             
											             <!-- 답변 등록 버튼 --> 
												         <div class="col-md-2">
													        <c:if test="${ sessionScope.entryMember.role eq 'MANAGER'}"> 
													       	<button type="submit" class="btn btn-outline-secondary ">답변등록</button>
													        </c:if> 
												         </div>
												    	 
												    	 <!-- 목록 버튼 -->
											             <div class="col-md-2">
											              <button type="button" class="btn btn-outline-secondary "
															id="listBtn" onclick="location.href='${ pageContext.servletContext.contextPath }/cs/list'">목록보기</button>
											             </div> 
														 <div class="col-md-4"></div>
										            </div>
	            							    </div>
												<!-- 작성자 id, DB에서 값 넣을 때 쓸 번호 같이 넘기자! -->
												<input type="hidden" name="csRequestNo" value="${ requestScope.csQuestion.csNo }">
												<input type="hidden" name="managerId" value="${ sessionScope.entryMember.id }">
										</form>
									</c:if>
								</c:if>
							
							<!-- 목록으로 돌아가는 버튼 -->
							<c:if test="${ requestScope.requestCount ne 0 }"> 
								<button type="button" class="btn btn-outline-secondary"
									id="listBtn" onclick="location.href='${ pageContext.servletContext.contextPath }/cs/list'">목록보기</button>
							</c:if>
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