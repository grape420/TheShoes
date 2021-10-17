<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
            <label class="email-result mb-0" id="email-result"></label><br>
            <br>
            <button type="button" id="send-email" class="hsy-btn btn btn-lg btn-block btn-outline-dark" value="아이디 찾기">아이디 찾기</button>
          </form>
          <br>
        </div>
    </section>
    
    <!-- footer -->
    <jsp:include page="../common/footer.jsp" />
    
    <script>
	    $("#send-email").click(function() {
			const email = $("#email").val();
			
			$.ajax({
				url: "${ pageContext.servletContext.contextPath }/member/findId",
				type: "GET",
				data: { email : email },
				success: function(data) {
					if(data == "fail") {
						$("#email-result").text("이메일을 다시한번 확인 해주세요.").css("color", "red");
					} else {
						$("#email-result").text("").css("color", "blue");
						alert("가입하신 이메일로 아이디를 전송했습니다.");
						location.replace("${ pageContext.servletContext.contextPath }/member/login");
					}
				},
				error: function(request, status, error) {
					alert("code:" + request.responseText + "\n"
						+ "message:" + request.responseText + "\n"
						+ "error:" + error);
				}
			});
		});
    </script>
</body>
</html>