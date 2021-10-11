<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/member/findPassword2.css">
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
              <span>01. 아이디 입력</span>&nbsp;&nbsp;·&nbsp;&nbsp;
              <span>02. 본인 확인</span>&nbsp;&nbsp;·&nbsp;&nbsp;
              <span class="text-black">03. 비밀번호 재설정</span>
            </p>
          </div>
          <hr>
          <br>
          <form id="change-password" action="#" method="POST">
            <input type="password" name="password" id="password" class="form-control" placeholder="변경할 비밀번호를 입력해주세요." autofocus required>
            <label class="password-result" id="password-result"></label>
            <br>
            <input type="password" name="password-check" id="password-check" class="form-control" placeholder="비밀번호를 재입력해주세요." required>
            <label class="password-result" id="password-check-result"></label>
            <br>
            <button type="button" id="next" class="hsy-btn btn btn-lg btn-block btn-outline-dark" value="아이디 찾기">다음</button>
          </form>
          <br>
        </div>
    </section>

	<!-- footer -->
	<jsp:include page="../common/footer.jsp" />
	
	<script src="${ pageContext.servletContext.contextPath }/resources/js/member/findPassword3.js"></script>
	
	<script>
		var passwordFlag = false;
		var passwordCheckFlag = false;
		
		$("#next").click(function() {
			$("#change-password").submit();
		});
	</script>
</body>
</html>






































