<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/manager/regShoes.css">
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
				<li class="nav-item">
				<a class="nav-link collapsed" href="#"
					data-toggle="collapse" data-target="#collapseTwo"
					aria-expanded="true" aria-controls="collapseTwo"> 
					<i class="fas fa-fw fa-folder"></i> <span>관리자정보</span>
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
					<div style="padding: 0 60px;">

						<!-- Page Heading -->
						<h1 class="h2 mb-4 text-gray-800">블랙리스트 등록</h1>
						<p class="mb-4">부적절한 유저를 블랙리스트에 등록할 수 있는 페이지입니다.</p>
						<div>

							<form class="needs-validation" method="post" action="${ pageContext.servletContext.contextPath }/manager/modMember">
								<div class="row">
									<div class="col-md-4 mb-3">
										<label>아이디</label> 
										<input type="text" class="form-control" id="id" value="${ member.id }" name="id" disabled="disabled">
										<input type="hidden" value="${ member.id }" name="id">
									</div>
									
									<div class="col-md-4 mb-3">
										<label>이름</label> 
										<input type="text" class="form-control" id="name" value="${ member.name }" name="name" disabled="disabled">
									</div>
									
									<div class="col-md-4 mb-3">
										<label>E-MAIL</label> 
										<input type="text" class="form-control" id="email" value="${ member.email }" name="email" disabled="disabled">
									</div>
									
									<div class="col-md-6 mb-3">
										<label>핸드폰 번호</label> 
										<input type="text" class="form-control" id="phone" value="${ member.phone }" name="phone" disabled="disabled">
									</div>
									
									<div class="col-md-6 mb-3">
										<label>생년월일</label> 
										<input type="text" class="form-control" id="birth" value="${ member.birth }" name="birth" disabled="disabled">
									</div>
									
									<div class="col-md-6 mb-3">
										<label>탈퇴 여부</label> 
										<input type="text" class="form-control" id="withDrawYn" value="${ member.withDrawYn }" name="withDrawYn" disabled="disabled">
									</div>
									
									<div class="col-md-6 mb-3">
										<label for="firstName">블랙리스트 여부</label>
										<select class="custom-select d-block w-100" id="blackListYn" name="blackListYn" >
										<option hidden><c:out value="${ member.blackListYn }" /></option>
											<option value="Y">Y</option>
											<option value="N">N</option>
										</select>
									</div>
									
								 <div class="col-md-12 mb-3">
								 	<div id="bl">
										<label for="address">블랙리스트 사유</label> 
										<select class="custom-select d-block w-100" id="delMemo" name="blackReason">
										<option value="" hidden selected>블랙리스트 사유를 선택해주세요.</option>
										<option value="부적절한 게시물 올림">부적절한 게시물 올림</option>
										<option value="그냥">그냥</option>
										<option value="내맘">내맘</option>
										<option value="self">직접입력</option>
										<div>
										<input type="text" hidden class="form-control mt-3" id="delMemoWrite" name="selfInput"
										placeholder="블랙리스트 사유를 15자 이내로 입력해주세요.">
									    <p style="text-align: right; font-size: 20px; padding: 10px;" id="limitNum" hidden><span id="counter">0</span>/15</p>
									  	</div>
										
										</select>
									</div>
									</div> 
									
									<div class="col-md-12 mb-3">
										<button type="submit" id="registBtn" class="btn btn-outline-secondary">블랙리스트 등록</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- footer -->
	<jsp:include page="../common/footer.jsp" />
	<script src="${ pageContext.servletContext.contextPath }/resources/js/shoes/pay.js"></script>
	<script type="text/javascript">
	
	      $("#delMemoWrite").keyup(function() {
	        console.log($(this).val());

	        var inputLength = $(this).val().length;

	        $("#counter").text(inputLength);

	        var remain = 15 - inputLength;

	        if (remain >= 0) {
	          $("#counter").parent().css("color", "black");
	          $("#registBtn").removeAttr("disabled");
	        } else {
	          $("#counter").parent().css("color", "red");
	          $("#registBtn").attr("disabled", true);
	        }
	      })
	    
	    	
		$('#delMemo').change(
				function() {
				if ($("#delMemo option:selected") .val() == 'self') {
					$("#delMemoWrite").removeAttr("hidden");
					$("#delMemoWrite").focus();
					$("#limitNum").removeAttr("hidden");
				} else {
					$("#delMemoWrite").attr("hidden", true);
					$("#limitNum").attr("hidden", true);
				}
			})
		
				$('#blackListYn').change(
				function() {
				if ($("#blackListYn option:selected").val() == 'N') {
					$("#bl").attr("hidden", true);
				} else {
					$("#bl").removeAttr("hidden");
				}
			})
		
		/* 3번 봐라 좋은 말로 할때 */
		$("#delMemoWrite").change(function() {
			$(this).val($(this).text);
			console.log($("#selfInput").val());
		})
		
		$("#delMemo").change(function () {
			$("#delMemoWrite").val("").text("");
		})
		
	</script>
</body>
</html>