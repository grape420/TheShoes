<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/shoes/pay.css">
<link rel="shortcut icon" href="${ pageContext.servletContext.contextPath }/resources/uses/the-shoes-favicon.png">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>THE SHOES</title>
</head>
<body>
	<!-- header -->
	<jsp:include page="../common/header.jsp" />

	<!-- section -->
	<section>
		<div class="container">
			<div class="py-5 text-center">
				<h2 class="paytitle">
					<b>주문결제</b>
				</h2>
			</div>

			<!-- 구분선 -->
			<hr class="mb-4">


			<!-- 결제창 내 주문내역 -->
			<div class="row">
				<div class="col-md-4 order-md-2 mb-4">
					<h4 class="d-flex justify-content-between align-items-center mb-3">
						<span class="text-muted">주문 금액</span> 
					</h4>
					<ul class="list-group mb-3">
						<li class="list-group-item d-flex justify-content-between lh-condensed">
							<div>
								<h6 class="my-0">상품 금액</h6>
							</div> 
							<span class="text-muted"><fmt:formatNumber value="${ shoes.shoesPrice }" pattern="#,###,###"/> 원</span>
							<input id="shoesPrice" hidden value="${ shoes.shoesPrice + 2500 }">
						</li>
						<li class="list-group-item d-flex justify-content-between lh-condensed">
							<div>
								<h6 class="my-0">배송비</h6>
							</div> 
							<span class="text-muted">2,500 원</span>
						</li>

						<li class="list-group-item d-flex justify-content-between">
						<strong>총 결제 예정 금액</strong> 
						<strong><fmt:formatNumber value="${ shoes.shoesPrice + 2500 }" pattern="#,###,###"/> 원</strong></li>

						<li class="list-group-item d-flex justify-content-between">
							<br>
							<small class="text-muted">장기간 장바구니에 보관하신 상품은 시간이 지남에 따라 가격과 혜택이 변동될 수 있으며, 최대 30일동안 보관됩니다.</small>
						</li>

					</ul>
				</div>

				<!-- 주문자 상세정보 -->
				<div class="col-md-8 order-md-1">
					<h6 class="mb-3">
						<b>주문자 정보</b>
					</h6>
					<form id="payForm" class="needs-validation" action="${ pageContext.servletContext.contextPath }/shoes/pay" method="POST">
						<div class="row">
							<div class="col-md-6 mb-3">
								<input type="hidden" name="shoesNo" value="${ shoes.shoesNo }">
								<label for="Name">이름</label> 
								<input readonly type="text" class="form-control" id="name" placeholder="ex) 홍길동" value="${ sessionScope.entryMember.name }" required>
								<label hidden class="name-result mt-2" id="name-result"></label>
							</div>
							<div class="col-md-6 mb-3">
								<label for="Phone">휴대폰</label> <input readonly type="text" class="form-control" id="phone" placeholder="ex) 01012345678" value="${ sessionScope.entryMember.phone }" required>
								<label hidden class="phone-result mt-2" id="phone-result"></label>
							</div>
						</div>
						<div class="mb-3">
							<label for="email">Email </label>
							<input readonly type="email" class="form-control" id="email" value="${ sessionScope.entryMember.email }" placeholder="ex) you@example.com">
							<label hidden class="email-result mt-2" id="email-result"></label>
						</div>

						<hr class="mb-4">
						<!-- 배송지 선택 -->
						<div class="mb-3">
							<h6 class="mb-3">
								<b>배송지 정보</b>
							</h6>
							<label for="address">배송지 선택</label> 
							<select class="custom-select d-block w-100" id="delMemo" required>
								<option value="test">배송지</option>
								<c:forEach varStatus="st" var="address" items="${ addressList }">
									<option id="option${ st.index + 1 }" value="option${ st.index + 1 }">${ address.addressName }</option>
								</c:forEach>
								<option id="writeAddress" value="writeAddress">직접입력</option>
							</select>
							<c:forEach varStatus="st" var="address" items="${ addressList }">
								<input hidden id="zipCode${ st.index + 1 }" value="${ address.address1MM }">
								<input hidden id="detailAddress${ st.index + 1 }" value="${ address.address2MM }">
							</c:forEach>
						</div>
						
						<div class="mb-3">
							<label for="address">주소</label> 
							<input name="zipCode" readonly type="text" class="form-control" id="address" required>
							<div class="invalid-feedback">주소를 입력해주세요</div>
						</div>

						<div class="mb-3">
							<label for="address2">상세주소<span class="text-muted"></span></label>
							<input name="detailAddress" readonly type="text" class="form-control" id="address2">
						</div>

						<hr class="mb-4">

						<button class="btn btn-outline-dark btn-lg btn-block" id="paybtn" type="button">다음 단계 진행</button>
						<hr class="mb-4">
					</form>
				</div>
			</div>
		</div>
	</section>

	<!-- footer -->
	<jsp:include page="../common/footer.jsp" />

	<script src="${ pageContext.servletContext.contextPath }/resources/js/shoes/pay.js"></script>
	
	<script>
		var shoesPrice;
		var payFlag = false;
		
		 $("#delMemo").change(function() {
			 $("#address").attr("readonly",true);
			 $("#address2").attr("readonly",true);
			if($("#delMemo").val() == "option1") {
				$("#address").val($("#zipCode1").val());
				$("#address2").val($("#detailAddress1").val());
			} else if($("#delMemo").val() == "option2") {
				$("#address").val($("#zipCode2").val());
				$("#address2").val($("#detailAddress2").val());
			} else if($("#delMemo").val() == "option3") {
				$("#address").val($("#zipCode3").val());
				$("#address2").val($("#detailAddress3").val());
			} else if($("#delMemo").val() == "writeAddress") {
				$("#address").val("");
				$("#address2").val("");
				new daum.Postcode({
					oncomplete: function(data){
						//팝업에서 검색결과 항목을 클릭했을 시 실행할 코드를 작성하는 부분
					document.getElementById("address").value = data.zonecode;
					document.getElementById("address2").value = data.address;
					}
				}).open();
				$("#address2").attr("readonly",false);
			}
		 });
		 
		 $("#paybtn").click(function () {
			 shoesPrice = $("#shoesPrice").val();
			 if($("#address").val() != "")
			 {
				
			    var IMP = window.IMP; // 생략가능
			    IMP.init('imp76318238');
			    // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
			    // i'mport 관리자 페이지 -> 내정보 -> 가맹점식별코드
			    IMP.request_pay({
			    pg: 'inicis', // version 1.1.0부터 지원.
			    /*
			    'kakao':카카오페이,
			    html5_inicis':이니시스(웹표준결제)
			    'nice':나이스페이
			    'jtnet':제이티넷
			    'uplus':LG유플러스
			    'danal':다날
			    'payco':페이코
			    'syrup':시럽페이
			    'paypal':페이팔
			    */
			    pay_method: 'card',
			    /*
			    'samsung':삼성페이,
			    'card':신용카드,
			    'trans':실시간계좌이체,
			    'vbank':가상계좌,
			    'phone':휴대폰소액결제
			    */
			    merchant_uid: 'merchant_' + new Date().getTime(),
			    /*
			    merchant_uid에 경우
			    https://docs.iamport.kr/implementation/payment
			    위에 url에 따라가시면 넣을 수 있는 방법이 있습니다.
			    참고하세요.
			    나중에 포스팅 해볼게요.
			    */
			    name: '주문명:결제테스트',
			    //결제창에서 보여질 이름
			    amount: 10,
			    //가격
			    buyer_email: 'iamport@siot.do',
			    buyer_name: '구매자이름',
			    buyer_tel: '010-1234-5678',
			    buyer_addr: '서울특별시 강남구 삼성동',
			    buyer_postcode: '123-456',
			    m_redirect_url: 'https://www.yourdomain.com/payments/complete'
			    /*
			    모바일 결제시,
			    결제가 끝나고 랜딩되는 URL을 지정
			    (카카오페이, 페이코, 다날의 경우는 필요없음. PC와 마찬가지로 callback함수로 결과가 떨어짐)
			    */
			    }, function (rsp) {
			    if (rsp.success) {
			    var msg = '결제가 완료되었습니다.';
			    msg += '고유ID : ' + rsp.imp_uid;
			    msg += '상점 거래ID : ' + rsp.merchant_uid;
			    msg += '결제 금액 : ' + rsp.paid_amount;
			    msg += '카드 승인번호 : ' + rsp.apply_num;
			    payFlag = true;
			    } else {
			    var msg = '결제에 실패하였습니다.';
			    msg += '에러내용 : ' + rsp.error_msg;
			    }
			    alert(msg);
			    if(payFlag == true) {
			    	$("#payForm").submit();
			    }
			    });			 
			    }
			 else {
				 alert("모든 작성을 완료 해 주세요.");
			 }
			    });
		
	</script>
	<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
  	<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>
</html>