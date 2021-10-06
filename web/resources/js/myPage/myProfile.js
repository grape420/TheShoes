$("#password").change(function() {
	var passwordEmp = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,16}/;

	if (!passwordEmp.test($(this).val())) {
		$("#password-result").text("영문, 숫자, 특수문자를 반드시 포함한 8~16글자로 작성 해 주세요(영문 대소문자 구분)").css("color", "red");
		$(this).focus();
	} else {
		$("#password-result").text("").css("color", "green");
	}
});

$("#passwordCheck").change(function() {
	if ($("#password").val() != $(this).val()) {
		$("#password-result").text("비밀번호가 일치하지 않습니다.").css("color", "red");
		$(this).focus();
	} else {
		$("#password-result").text("").css("color", "green");
	}
});

$("#phone").change(function() {
	var phoneExp = /^01(?:0|1|[6-9])(?:\d{3}|\d{4})\d{4}$/;

	if (!phoneExp.test($(this).val())) {
		$("#phone-result").text("올바르지 않은 휴대폰 번호 형식입니다.").css("color", "red");
		$(this).focus();
	} else {
		$("#phone-result").text("").css("color", "green");
	}
});

/* 신발 사이즈 선택 */
$("#sizeBtn").click(function() {
	$("#shoesSize").text($("#shoesSelect").val());
});

/* 핸드폰 번호 변경 */
$("#telInput").click(function() {
	$("#phoneNum").text($("#phone").val());
});

/* 생년월일 변경 */
$("#birthBtn").click(function() {
	$("#birthDay").text($("#birth").val());
});

/* 비밀번호 변경 */
$("#pwdBtn").click(function() {
	$("#modifiedPwd").text($("#password").val());
});

/* 눈 깜빡임 */
$('.eye').click(function() {
	$('#modifiedPwd').toggleClass('active');
	if ($('#modifiedPwd').hasClass('modifiedPwd')) {
		$(this).attr('class', "fa fa-eye-slash fa-lg eye");
		$('#modifiedPwd').removeAttr('class');
	} else {
		$(this).attr('class', "fa fa-eye fa-lg eye");
		$('#modifiedPwd').attr('class', 'modifiedPwd');
	}
});