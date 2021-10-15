<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="${ pageContext.servletContext.contextPath }/resources/css/myPage/myAddress.css">
<link rel="shortcut icon"
	href="${ pageContext.servletContext.contextPath }/resources/uses/the-shoes-favicon.png">
<link
	href="${ pageContext.servletContext.contextPath }/resources/uses/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<link
	href="${ pageContext.servletContext.contextPath }/resources/uses/css/sb-admin-2.min.css"
	rel="stylesheet">
<link
	href="${ pageContext.servletContext.contextPath }/resources/uses/vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">
<link
	rel="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
				<!-- Sidebar - Brand -->
				<a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
					<div class="sidebar-brand-icon rotate-n-15"></div>
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
							<a class="collapse-item" href="${ pageContext.servletContext.contextPath }/myPage/drawHistory">응모 내역</a> 
							<a class="collapse-item" href="${ pageContext.servletContext.contextPath }/myPage/salesHistory">구매 내역</a> 
							<a class="collapse-item" href="${ pageContext.servletContext.contextPath }/myPage/resellHistory">판매 내역</a> 
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
				<!-- Sidebar Toggler (Sidebar) -->
				<div class="text-center d-none d-md-inline">
					<button class="rounded-circle border-0" id="sidebarToggle"></button>
				</div>
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
						<h1 class="h3 mb-2 text-gray-800">주소록</h1>

						<!-- 주소록 추가 modal-->
						
						<!-- 이건 3번 되야대 -->
						<c:if test="${ addressCT le 2 }">
						<button type="button" class="Add-addressBTN" data-toggle="modal"
							data-target="#exampleModal" data-whatever="@getbootstrap">	+ 배송지추가</button>
						</c:if>
						
						<div class="modal fade" id="exampleModal" tabindex="-1"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-H">
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									
									<div class="contents">
										<div class="address-form"
											data-module-shipping-address-write="{isModify:false}">
											<form class="manage-account" method="POST" id="test"
												action="${ pageContext.servletContext.contextPath }/myPage/address">

												<h2 class="tit">배송지 이름</h2>
												<input required type="text" name="addressNameMM"
													id="addressName" class="form-control" placeholder="배송지 이름">
												<label class="addressName-result" id="addressName-result"></label>
									
												<h2 class="tit">배송지 검색</h2>
												<input required type="text" name="address1" id="address1MM"
													class="form-control" value="" placeholder="예) 사랑시 고백구 행복동">
												<input type="button" id="searchZipCode" class="btn_search"
													value="검색">

												<h2 class="tit">상세주소</h2>
												<input required type="text" name="address2" id="address2MM"
													class="form-control" placeholder="상세주소">

												<button type="submit" class="abtn-link width-large"
													id="sizeBtn" data-dismiss="modal">배송지 추가</button>
											</form>
										</div>
									</div>
									
								</div>
							</div>
						</div>

						<!-- 주소록 리스트 -->
						<div class="cart-list">
							<c:forEach var="addressA" items="${ addressList }">
								<div class="item-info">
									<div class="basic">
										<div class="my_item is_active" >
											<div class="info_bind">
												<div class="address_info">
													<div class="name_box">
														<span class="name" id ="name"> <c:out value="${ addressA.addressName }"/> </span> <br>
														<span class="zipcode" id ="zipcode"> <c:out value="${ addressA.address1MM }"/> </span> 
														<span class="address" id ="address"> <c:out value="${ addressA.address2MM }"/> </span>
														<div class="right_btm">
														<a id="btnM"  type="button" class="btn outlinegrey small modi" data-toggle="modal" data-target="#exampleModa"
														   data-whatever="@getbootstrap"> 수정 </a> 
														<a href="${ pageContext.servletContext.contextPath }/myPage/address?delete=${ addressA.addressNo }" 
														id="" type="button" class="btn outlinegrey small"> 삭제 </a>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
			<!-- 주소록수정  modal-->
		<div class="modal fade" id="exampleModa" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-H">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="contents">
						<div class="address-form">
							<form class="manage-account"  id="modify" novalidate action="${ pageContext.servletContext.contextPath }/myPage/modifyAddress" method="post">
								
								<h2 class="tit">배송지 이름</h2>
								<input type="text" name="addressName2" id="addressName2" class="form-control" value="${ requestScope.addressList[0].addressName }" required >
								<label class="addressName-result2" id="addressName-result" ></label>

								<h2 class="tit">배송지 검색</h2>
								<input type="text" name="address1" id="address1" class="form-control address-search" value ="${ reqiestScope.addressList[0].address1MM }" required>
								 <input type="button" class="btn_search" id="searchZipCodeMM" value="검색">

								<h2 class="tit">상세주소</h2>
								<input type="text" name="address2" id="address2" class="form-control" value ="${ reqiestScope.addressList[0].address2MM }" required>
        
								<div class="btn-wrap">
									<!-- 전체 데이터를 불러와서 수정을 해야하는데 수정불가하지만 필요한 값 -->
									<input type="hidden" name="addressNo" value="${ requestScope.addressList[0].addressNo }">							
									<input type="hidden" name="nameMM" value="${ requestScope.addressList[0].nameMM }">
									<button type="submit" class="abtn-link width-large"	id="changeBtn" data-dismiss="modal" >배송지 수정</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- 다음 우편번호 api -->
	<!-- 참고 링크 : http://postcode.map.daum.net/guide -->
	<!--  주소록 추가 -->
	<script>
		 const $searchZipCode = document.getElementById("searchZipCode");
		 const $sizeBtn = document.getElementById("sizeBtn");
				
		 $searchZipCode.onclick = function()  {  
			//다음 우편번호 검색 창을 오픈하면서 동작할 콜백 메소드를 포함한 객체를 매개변수로 전달한다.
			new daum.Postcode({
				oncomplete: function(data){
					//팝업에서 검색결과 항목을 클릭했을 시 실행할 코드를 작성하는 부분
				document.getElementById("address1MM").value = data.zonecode;
				document.getElementById("address2MM").value = data.address;
				}
			}).open();
		}
		$sizeBtn.onclick = function() {
		 location.href = "${ pageContext.servletContext.contextPath }";
		}
	
	<!-- 주소록 수정 -->
	
		const $searchZipCodeMM = document.getElementById("searchZipCodeMM");
		const $changeBtn = document.getElementById("changeBtn");
			  
		$searchZipCodeMM.onclick = function()  {  
			//다음 우편번호 검색 창을 오픈하면서 동작할 콜백 메소드를 포함한 객체를 매개변수로 전달한다.
			new daum.Postcode({
				oncomplete: function(data){
					//팝업에서 검색결과 항목을 클릭했을 시 실행할 코드를 작성하는 부분
				document.getElementById("address1").value = data.zonecode;
				document.getElementById("address2").value = data.address;
				}
			}).open();
		}
	    $sizeBtn.onclick = function() {
		 location.href = "${ pageContext.servletContext.contextPath }";
		}
	    
	    /* 주소록 수정 클릭시 보달창에 값 뿌려주기 3번 보기 */ 
	    $(".modi").click(function(){ 
	    $("#address2").val($(this).parent().prev().text());
	    $("#address1").val($(this).parent().prev().prev().text());
	    $("#addressName2").val($(this).parent().prev().prev().prev().prev().text());
	    })
	    
   		$("#sizeBtn").click(function() {
        $("#test").submit();
     	})

     	$("#changeBtn").click(function() {
        $("#modify").submit();
      	})

	</script>
	


	<!-- footer -->
	<jsp:include page="../common/footer.jsp" />

	<script src="${ pageContext.servletContext.contextPath }/resources/js/myPage/myProfile.js">
	</script>
	
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	
	
</body>
</html>