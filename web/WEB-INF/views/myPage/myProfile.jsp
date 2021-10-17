<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/myPage/myProfile.css">
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

		<!-- Page Wrapper -->
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

			<!-- 자자 해보자 -->
			<!-- Content Wrapper -->
			<div id="content-wrapper" class="d-flex flex-column">

				<!-- Begin Page Content -->
				<div class="container-fluid">
					<br>
					<div style="padding-left: 50px;">
						<h1 class="h3 mb-2 text-gray-800">프로필 정보</h1>
						<hr>

						<div class="item-info">
							<p class="h5 mb-2 text-gray-900">로그인 정보</p>
							<br> 아이디<br> ${ sessionScope.entryMember.id }<br>
						</div>
						<div class="item-info">
							비밀번호<br> 
							<span id="modifiedPwd" class="modifiedPwd"></span>
							<div class="btnArea">
								<button type="button" class="btn btn-outline-secondary" data-toggle="modal" data-target="#exampleModal5" data-whatever="@getbootstrap" style="font-size: 13px;">변경</button>

								<!-- modal -->
								<div class="modal fade" id="exampleModal5" tabindex="-1" aria-labelledby="exampleModalLabel5" aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title" id="exampleModalLabel5">The Shoes</h5>
												<button type="button" class="close" data-dismiss="modal" aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
											</div>
											<div class="modal-body">
												<form class="signup-form" action="#" method="POST">
													<input required type="password" name="password" id="password" class="form-control" placeholder="영문 대 소문+숫자+특수문자 8~16자리"> <br> 
													<input required type="password" name="passwordCheck" id="passwordCheck" class="form-control" placeholder="패스워드를 다시 입력해주세요."> 
													<label class="password-result" id="password-result"></label>
												</form>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
												<button type="button" id="pwdBtn" name="pwdBtn" class="btn btn-primary">변경</button>
											</div>
										</div>
									</div>
								</div>
								<!-- modal -->
							</div>
						</div>

						<p class="h5 mt-5 text-gray-900">개인 정보</p>
						<div class="item-info">
							이름<br> ${ sessionScope.entryMember.name }<br>
						</div>

						<div class="item-info">
							휴대폰 번호<br> <span id="phoneNum">${ sessionScope.entryMember.phone }</span>
							<div class="btnArea">
								<button type="button" class="btn btn-outline-secondary"
									data-toggle="modal" data-target="#exampleModal3"
									data-whatever="@getbootstrap" style="font-size: 13px;">변경</button>
								<!-- modal -->
								<div class="modal fade" id="exampleModal3" tabindex="-1" aria-labelledby="exampleModalLabel3" aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title" id="exampleModalLabel3">The Shoes</h5>
												<button type="button" class="close" data-dismiss="modal" aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
											</div>
											<div class="modal-body">
												<form class="signup-form" action="#" method="POST">
													<label>휴대폰 번호를 입력하세요</label> 
													<input type="text" name="phone" id="phone" class="form-control" placeholder="휴대폰 번호 '-'표 없이 입력해 주세요."> 
													<label class="phone-result" id="phone-result"></label>
												</form>
											</div>

											<div class="modal-footer">
												<button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
												<button type="button" id="telInput" class="btn btn-primary">변경</button>
											</div>
										</div>
									</div>
								</div>
								<!-- modal -->
							</div>
						</div>

						<div class="item-info">
						<fmt:parseDate type="date" value="${ sessionScope.entryMember.birth }" pattern="yyyyMMdd" var="birthday"/>
							생년월일<br> <span id="birthDay">${ sessionScope.entryMember.birth }</span>
							<div class="btnArea">
								<button type="button" class="btn btn-outline-secondary"
									data-toggle="modal" data-target="#exampleModal2"
									data-whatever="@getbootstrap" style="font-size: 13px;">변경</button>

								<!-- modal -->
								<div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel2" aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title" id="exampleModalLabel2">The Shoes</h5>
												<button type="button" class="close" data-dismiss="modal" aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
											</div>
											<div class="modal-body">
												<form>
													<label>생년 월일을 입력하세요</label> 
													<input type="text" class="form-control" id="birth">
													<label class="phone-result" id="birth-result"></label>
												</form>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
												<button type="button" class="btn btn-primary" id="birthBtn" >변경</button>
											</div>
										</div>
									</div>
								</div>
								<!-- modal -->
							</div>
						</div>

						<br>
						<br> <a href="${ pageContext.servletContext.contextPath }/common/nav?no=2"
							style="text-decoration: underline; color: gray; font-size: small;">회원탈퇴</a>

					</div>
				</div>
			</div>
		</div>
		</div>

	</section>

	<!-- footer -->
	<jsp:include page="../common/footer.jsp" />
	
	<script>
		var type = "";
		var passwordFlag = false;
		var phoneFalg = false;
		var birthFlag = false;
	
		$("#password").change(function() {
			var passwordEmp = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,16}/;
	
			if (!passwordEmp.test($(this).val())) {
				$("#password-result").text("영문, 숫자, 특수문자를 반드시 포함한 8~16글자로 작성 해 주세요(영문 대소문자 구분)").css("color", "red");
				$(this).focus();
				passwordFlag = false;
			} else {
				$("#password-result").text("").css("color", "green");
			}
		});
	
		$("#passwordCheck").change(function() {
			var passwordEmp = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,16}/;
			
			if ($("#password").val() != $(this).val()) {
				$("#password-result").text("비밀번호가 일치하지 않습니다.").css("color", "red");
				$(this).focus();
				passwordFlag = false;
			} else {
				$("#password-result").text("").css("color", "green");
				if (!passwordEmp.test($("#password").val())) {
					$("#password-result").text("영문, 숫자, 특수문자를 반드시 포함한 8~16글자로 작성 해 주세요(영문 대소문자 구분)").css("color", "red");
				} else {
					$("#password-result").text("").css("color", "green");
					passwordFlag = true;
				}
			}
		});
	
		$("#phone").change(function() {
			var phoneExp = /^01(?:0|1|[6-9])(?:\d{3}|\d{4})\d{4}$/;
	
			if (!phoneExp.test($(this).val())) {
				$("#phone-result").text("올바르지 않은 휴대폰 번호 형식입니다.").css("color", "red");
				$(this).focus();
				phoneFlag = false;
			} else {
				$("#phone-result").text("").css("color", "green");
				phoneFlag = true;
			}
		});
		
		$("#birth").change(function() {
			var birthExp = /^(19|20)[0-9]{2}(0[1-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/;

			if (!birthExp.test($(this).val())) {
				$("#birth-result").text("올바르지 않은 생년월일입니다.").css("color", "red");
				$(this).focus();
				birthFlag = false;
			} else {
				$("#birth-result").text("").css("color", "green");
				birthFlag = true;
			}
		})
	
		/* 핸드폰 번호 변경 */
		$("#telInput").click(function() {
				if (phoneFlag == true) {
				
				const phone = $("#phone").val();
				console.log(phone);
				$.ajax({
					url: "${ pageContext.servletContext.contextPath }/member/change",
					type: "GET",
					data: { type : "phone" ,
						    value : phone },
					success: function(data) {
						if(data == "fail") {
							alert("휴대폰 번호 변경에 실패하였습니다.");
						} else {
							alert("휴대폰 번호가 성공적으로 변경되었습니다.")
							$("#phoneNum").text($("#phone").val());
							$("#exampleModal3").modal("hide");
						}
					},
					error: function(request, status, error) {
						alert("code:" + request.responseText + "\n"
							+ "message:" + request.responseText + "\n"
							+ "error:" + error);
					}
				});
			}
		});
	
		/* 생년월일 변경 */
		$("#birthBtn").click(function() {
			if (birthFlag == true) {
				
				const birth = $("#birth").val();
				
				$.ajax({
					url: "${ pageContext.servletContext.contextPath }/member/change",
					type: "GET",
					data: { type : "birth" ,
						    value : birth },
					success: function(data) {
						if(data == "fail") {
							alert("생년월일 변경에 실패하였습니다.");
						} else {
							alert("생년월일이 성공적으로 변경되었습니다.")
							$("#birthDay").text($("#birth").val());
							$("#exampleModal2").modal("hide");
						}
					},
					error: function(request, status, error) {
						alert("code:" + request.responseText + "\n"
							+ "message:" + request.responseText + "\n"
							+ "error:" + error);
					}
				});
			}
			$("#birthDay").text($("#birth").val());
		});
	
		/* 비밀번호 변경 */
		$("#pwdBtn").click(function() {
			if (passwordFlag == true) {
				
				const password = $("#password").val();
				
				$.ajax({
					url: "${ pageContext.servletContext.contextPath }/member/change",
					type: "GET",
					data: { type : "password" ,
						    password : password },
					success: function(data) {
						if(data == "fail") {
							alert("비밀번호 변경에 실패하였습니다.");
						} else {
							alert("비밀번호가 성공적으로 변경되었습니다.")
							$("#modifiedPwd").text($("#password").val());
							$("#exampleModal5").modal("hide");
						}
					},
					error: function(request, status, error) {
						alert("code:" + request.responseText + "\n"
							+ "message:" + request.responseText + "\n"
							+ "error:" + error);
					}
				});
			}
		});
	</script>

</body>
</html>