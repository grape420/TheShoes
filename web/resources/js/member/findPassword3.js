$("#password").change(function() {
	var passwordEmp = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,16}/;

	if (!passwordEmp.test($(this).val())) {
		$("#password-result").text("영문, 숫자, 특수문자를 반드시 포함한 8~16글자로 작성 해 주세요(영문 대소문자 구분)").css("color", "red");
		$(this).focus();
	} else {
		$("#password-result").text("").css("color", "green");
	}
})

$("#password-check").change(function() {
	if ($("#password").val() != $(this).val()) {
		$("#password-check-result").text("비밀번호가 일치하지 않습니다.").css("color", "red");
		$(this).focus();
	} else {
		$("#password-check-result").text("").css("color", "green");
	}
})