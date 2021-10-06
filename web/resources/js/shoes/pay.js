$(function() {
	$('#delMemo').change(
		function() {
			//직접입력일 경우
		if ($("#delMemo option:selected") .val() == 'self') {
			$("#delMemoWrite").removeAttr("hidden");
		} else {
			$("#delMemoWrite").attr("hidden", true);
		}
	})
})

$("#name").change(function() {

	/* 한글자만 최소 2자 이상 */
	var regExp = /^[가-힣]{2,}$/;

	if (!regExp.test($(this).val())) {       // 사용자가 한글 2자 이상을 여겼을 때
		$("#name-result").text("한글로 2자 이상 입력하세요").css("color", "red").removeAttr("hidden");
		$(this).val("").focus();
	} else {
		$("#name-result").text("").attr("hidden", true);
	}
})

$("#phone").change(function() {
	var phoneExp = /^01(?:0|1|[6-9])(?:\d{3}|\d{4})\d{4}$/;

	if (!phoneExp.test($(this).val())) {
		$("#phone-result").text("올바르지 않은 휴대폰 번호 형식입니다.").css("color", "red").removeAttr("hidden");
		$(this).focus();
	} else {
		$("#phone-result").text("").attr("hidden", true);
	}
})

$("#email").change(function() {
	var emailExp = /^[a-z0-9_+.-]+@([a-z0-9-]+\.)+[a-z0-9]{2,4}$/

	if (!emailExp.test($(this).val())) {
		$("#email-result").text("올바르지 않은 이메일 형식입니다.").css("color", "red").removeAttr("hidden");
		$(this).focus();
	} else {
		$("#email-result").text("").attr("hidden", true);
	}
})