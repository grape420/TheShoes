/* 배송지 변경 */
$("#changeBtn").click(function() {
	$("#markT").text($("#addressName2").val());
	$("#name").text($("#name2").val());
	$("#phone").text($("#phone2").val());
	$("#zipcode").text($("#address1").val());
	$("#address").text($("#address2").val());
});

$("#addressName").change(function() {
	/* 한글자만 최소 1자 이상 */
	var regExp = /^[가-힣]{1,}$/;
	if (!regExp.test($(this).val())) {       // 사용자가 한글 1자 이상을 여겼을 때
		$("#addressName-result").text("한글로 1자 이상 입력하세요").css("color", "red");
		$(this).val("").focus();
	} else {
		$("#addressName-result").text("").css("color", "blue");
		$(this).css("background", "white");
	}
});

$("#name").change(function() {
	/* 한글자만 최소 2자 이상 */
	var regExp = /^[가-힣]{2,}$/;
	if (!regExp.test($(this).val())) {       // 사용자가 한글 2자 이상을 여겼을 때
		$("#name-result").text("한글로 2자 이상 입력하세요").css("color", "red");
		$(this).val("").focus();
	} else {
		$("#name-result").text("").css("color", "blue");
		$(this).css("background", "white");
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