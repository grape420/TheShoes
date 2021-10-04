<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/member/findPassword1.css">
<link rel="shortcut icon" href="${ pageContext.servletContext.contextPath }/resources/uses/the-shoes-favicon.png">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>THE SHOES</title>
</head>
<body>
	<!-- header -->
	<jsp:include page="../common/header.jsp" />
	
    <!-- section -->
    <section>
        <div class="section-main-div">
        <br><br>
          <img class="logo-form rounded mx-auto d-block" src="${ pageContext.servletContext.contextPath }/resources/uses/Logo.png">
          <br>
          <div class="indicator">
            <p>
              <span class="text-black">01. 아이디 입력</span>&nbsp;&nbsp;·&nbsp;&nbsp;
              <span>02. 본인 확인</span>&nbsp;&nbsp;·&nbsp;&nbsp;
              <span>03. 비밀번호 재설정</span>
            </p>
          </div>
          <hr>
          <br>
          <form action="#" method="POST">
            <input type="text" name="id" id="id" class="form-control" placeholder="아이디" autofocus required>
            <br>
            <button type="submit" class="hsy-btn btn btn-lg btn-block btn-outline-dark" value="아이디 찾기">다음</button>
          </form>
          <br>
        </div>
    </section>
    
    <!-- footer -->
    <jsp:include page="../common/footer.jsp" />
</body>
</html>