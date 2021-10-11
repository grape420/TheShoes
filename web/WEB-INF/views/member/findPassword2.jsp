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
              <span class="text-black">02. 본인 확인</span>&nbsp;&nbsp;·&nbsp;&nbsp;
              <span>03. 비밀번호 재설정</span>
            </p>
          </div>
          <hr>
          <br>
          <form action="#" method="GET">
            <div class="row">
                <input type="text" name="name" id="name" class="form-control" placeholder="이름" autofocus required>
                <label class="name-result mb-0" id="name-result"></label>
            </div>
            <br>
            <div class="row">
                <input type="text" name="email" id="email" class="col-8 form-control" placeholder="이메일" required>
                <div class="col-1"></div>
                <button type="button" id="code-send-btn" class="code-send-btn col-3 hsy-btn btn btn-lg btn-block btn-outline-dark" value="아이디 찾기">인증번호</button>
                <br>
                <label class="email-result mb-0" id="email-result"></label>
            </div>
            <br>
            <div class="row">
                <input type="text" name="code" id="code" class="col-8 form-control" placeholder="인증번호" required>
                <div class="col-1"></div>
                <label id="count-down" class="col-3 count-down">03:00</label>
            </div>
            <br>
            <div class="row">
                <button type="button" id="next" class="hsy-btn btn btn-lg btn-block btn-outline-dark">다음</button>
            </div>
          </form>
          <br>
        </div>
    </section>
    
    <!-- footer -->
    <jsp:include page="../common/footer.jsp" />
    
    <script src="${ pageContext.servletContext.contextPath }/resources/js/member/findPassword2.js"></script>
    
    <script>
    	var nameFlag = false;
    	var emailFlag = false;
    	var emailTextFlag = false;
    	var min = 0;
    	var sec = 0;
    	var code = "";
    	var countInterval;
    	
	    $("#code-send-btn").click(function() {
			const name = $("#name").val();
			const email = $("#email").val();
			
			if (name != "${ sessionScope.findMember.name }") {
				$("#name-result").text("이름이 일치하지 않습니다.").css("color", "red");
			} else {
				$("#name-result").text("").css("color", "blue");
			}
			if (email != "${ sessionScope.findMember.email }") {
				$("#email-result").text("이메일이 일치하지 않습니다.").css("color", "red");
			} else {
				$("#email-result").text("").css("color", "blue");
			}
			if ((name == "${ sessionScope.findMember.name }") && (email == "${ sessionScope.findMember.email }")) {
				nameFlag = true;
				emailTextFlag = true;
				clearInterval(countInterval);
				$.ajax({
					url: "${ pageContext.servletContext.contextPath }/member/findPassword?step=4",
					type: "GET",
					data: {  },
					success: function(data) {
						if(data == "fail") {
							$("#id-result").text("아이디를 다시 확인해 주세요.").css("color", "red");
						} else {
							code = data;
							$("#id-result").text("").css("color", "blue");
							console.log("Test");
							countStart();
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
	    
	    $("#next").click(function() {
	    	const name = $("#name").val();
			const email = $("#email").val();
			const codeText = $("#code").val()
			
			if((min > 0 && sec > 0) && (code == codeText) && (emailTextFlag == true)) {
				emailFlag = true;
				clearInterval(countInterval);
				
				$("#count-down").text("인증 성공").css("color", "blue");
			} else {
				emailFlag = false;
			}
			
			if(emailFlag == false || emailTextFlag == false) {
				$("#email-result").text("이메일 인증을 다시 해주세요.").css("color", "red");
				$("#count-down").text("03:00").css("color", "red");
				$("#email").val("").focus();
				clearInterval(countInterval);
			}
			
			if (name != "${ sessionScope.findMember.name }") {
				$("#name-result").text("이름이 일치하지 않습니다.").css("color", "red");
			} else {
				$("#name-result").text("").css("color", "blue");
			}
			
			if((nameFlag == true) && (emailFlag == true)) {
				location.replace("${ pageContext.servletContext.contextPath }/member/findPassword?step=3");
			}
		});
    </script>
</body>
</html>