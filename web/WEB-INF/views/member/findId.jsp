<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/member/findId.css">
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
        <br><br><br><br>
          <img class="logo-form rounded mx-auto d-block" src="${ pageContext.servletContext.contextPath }/resources/uses/Logo.png">
          <br><br><br><br>
          <form action="#" method="POST">
            <input type="text" name="email" id="email" class="form-control" placeholder="가입하신 이메일" autofocus>
            <br>
            <button type="submit" class="hsy-btn btn btn-lg btn-block btn-outline-dark" value="아이디 찾기">아이디 찾기</button>
          </form>
          <br>
        </div>
    </section>
    
    <!-- footer -->
    <jsp:include page="../common/footer.jsp" />
</body>
</html>