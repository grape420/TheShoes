<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Noto+Sans&family=Noto+Sans+KR:wght@100&display=swap">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Noto+Sans&display=swap">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"/>
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/common/header.css">
<title>THE SHOES</title>
</head>
<body>
	<!-- 맨 위로가기 버튼 -->
    <div id="scrollTop">
      <a href="#top"><i class="fa fa-angle-up" aria-hidden="true"></i></a>
    </div>

    <!-- header -->
    <header id="top">
      <!-- navbar -->
      <nav class="navbar navbar-expand-sm navbar-light bg-light" style="padding: 0;">
        <div class="collapse navbar-collapse justify-content-end">
          <ul class="navbar-nav mr-3">
          	<c:if test="${ !empty sessionScope.entryMember }">
	          	<li class="nav-item mr-2 ml-2">
	              <a>${ entryMember.id } 님 환영합니다.</a>
	            </li>
            </c:if>
            <li class="nav-item mr-2 ml-2">
              <a href="${ pageContext.servletContext.contextPath }/board/list">고객센터</a>
            </li>
          	<c:if test="${ empty sessionScope.entryMember }">
	            <li class="nav-item mr-2 ml-2">
	              <a href="${ pageContext.servletContext.contextPath }/member/login">로그인</a>
	            </li>
	            <li class="nav-item mr-2 ml-2">
	              <a href="${ pageContext.servletContext.contextPath }/member/signup">회원가입</a>
	            </li>
	         </c:if>
	         <c:if test="${ !empty sessionScope.entryMember }">
	            <li class="nav-item mr-2 ml-2">
	              <a href="${ pageContext.servletContext.contextPath }/member/logout">로그아웃</a>
	            </li>
	            <li class="nav-item mr-2 ml-2">
	              <a href="${ pageContext.servletContext.contextPath }/myPage/drawHistory">마이페이지</a>
	            </li>
		         <c:if test="${ sessionScope.entryMember.role eq 'MANAGER'}">
		            <li class="nav-item mr-2 ml-2">
		              <a href="${ pageContext.servletContext.contextPath }/manager/shoes">관리자 페이지</a>
		            </li>
		         </c:if>
	         </c:if>
          </ul>
        </div>
      </nav>
      <hr class="m-0">
      <nav class="navbar navbar-expand-sm navbar-light bg-light">
        <a class="navbar-brand font-weight-bold" href="${ pageContext.servletContext.contextPath }/common/mainPage">
	        <img src="${ pageContext.servletContext.contextPath }/resources/uses/Logo-simple.png" alt="" class="logo">
         </a>
        <div class="collapse navbar-collapse justify-content-end">
          <ul class="navbar-nav mr-3">
            <li class="nav-item mr-1">
              <a class="nav-link font-weight-bold" href="${ pageContext.servletContext.contextPath }/shoes/list">THE DRAW</a>
            </li>
            <li class="nav-item mr-1">
              <a class="nav-link font-weight-bold" href="${ pageContext.servletContext.contextPath }/resell/resellList">RESELL</a>
            </li>
          </ul>
          <c:set var="test" value="" />
          <form action="${ pageContext.servletContext.contextPath }/shoes/list?search=${ test }" method="GET">
            <input id="search" name="search" class="form-control" type="text" placeholder="Search">
          </form >
          <a href="${ pageContext.servletContext.contextPath }/myPage/wishList"><span class="heart"><i class="fa fa-heart-o" aria-hidden="true"></i></span></a>
        </div>
      </nav>
      <hr class="m-0">
    </header>
    <script src="${ pageContext.servletContext.contextPath }/resources/uses/vendor/jquery/jquery.min.js"></script>
	<script src="${ pageContext.servletContext.contextPath }/resources/uses/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="${ pageContext.servletContext.contextPath }/resources/uses/vendor/jquery-easing/jquery.easing.min.js"></script>
	<script src="${ pageContext.servletContext.contextPath }/resources/uses/js/sb-admin-2.min.js"></script>
	<script src="${ pageContext.servletContext.contextPath }/resources/uses/vendor/datatables/jquery.dataTables.min.js"></script>
	<script src="${ pageContext.servletContext.contextPath }/resources/uses/vendor/datatables/dataTables.bootstrap4.min.js"></script>
	<script src="${ pageContext.servletContext.contextPath }/resources/uses/js/demo/datatables-demo.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/js/common/jquery.mousewheel.min.js"></script>
    <script src="${ pageContext.servletContext.contextPath }/resources/js/common/main.js"></script>
    
    <script>
    	var test = "${ test }";
    	
    	$('#search').change(function() {
    		test = $("#search").val();
    	});
    </script>
    
</body>
</html>