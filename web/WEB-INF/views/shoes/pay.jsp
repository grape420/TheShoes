<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
						<span class="text-muted">주문내역</span> <span
							class="badge badge-secondary badge-pill">3</span>
					</h4>
					<ul class="list-group mb-3">
						<li
							class="list-group-item d-flex justify-content-between lh-condensed">
							<div>
								<h6 class="my-0">상품금액</h6>
							</div> <span class="text-muted">109,000원</span>
						</li>
						<li
							class="list-group-item d-flex justify-content-between lh-condensed">
							<div>
								<h6 class="my-0">배송비</h6>
							</div> <span class="text-muted">0원</span>
						</li>

						<li class="list-group-item d-flex justify-content-between"><strong>총
								결제 예정 금액</strong> <strong>109,000원</strong></li>

						<li class="list-group-item d-flex justify-content-between"><br>
							<small class="text-muted">장기간 장바구니에 보관하신 상품은 시간이 지남에 따라
								가격과 혜택이 변동될 수 있으며, 최대 30일동안 보관됩니다.</small></li>

					</ul>
				</div>

				<!-- 주문자 상세정보 -->
				<div class="col-md-8 order-md-1">
					<h6 class="mb-3">
						<b>주문자 정보</b>
					</h6>
					<form class="needs-validation" novalidate>
						<div class="row">
							<div class="col-md-6 mb-3">
								<label for="Name">이름</label> 
								<input type="text" class="form-control" id="name" placeholder="ex) 홍길동" value="" required>
								<label hidden class="name-result mt-2" id="name-result"></label>
							</div>
							<div class="col-md-6 mb-3">
								<label for="Phone">휴대폰</label> <input type="text" class="form-control" id="phone" placeholder="ex) 01012345678" value="" required>
								<label hidden class="phone-result mt-2" id="phone-result"></label>
							</div>
						</div>
						<div class="mb-3">
							<label for="email">Email </label>
							<input type="email" class="form-control" id="email" placeholder="ex) you@example.com">
							<label hidden class="email-result mt-2" id="email-result"></label>
						</div>

						<hr class="mb-4">

						<div class="mb-3">
							<h6 class="mb-3">
								<b>배송지 정보</b>
							</h6>
							<label for="address">주소</label> <input type="text"
								class="form-control" id="address" placeholder="ex) 서울시 서초구 강남대로 441"
								required>
							<div class="invalid-feedback">주소를 입력해주세요</div>
						</div>

						<div class="mb-3">
							<label for="address2">상세주소<span class="text-muted"></span></label>
							<input type="text" class="form-control" id="address2"
								placeholder="ex) 4층 402호">
						</div>

						<!-- 배송 메모 선택 -->
						<div class="mb-3">
							<label for="address">배송 메세지</label> <select
								class="custom-select d-block w-100" id="delMemo" required>
								<option value="selectMemo" selected>배송 메모를 선택해주세요.</option>
								<option value="callMe">배송 시 연락 부탁드립니다.</option>
								<option value="fast">빠른 배송 부탁드립니다.</option>
								<option value="securityOffice">부재 시 경비실에 맡겨주세요.</option>
								<option value="self">직접입력</option>
								<!-- 직접입력 시 텍스트박스 생성 -->
								<input type="text" hidden class="form-control mt-3" id="delMemoWrite"
								placeholder="배송 메세지를 입력해주세요." required>
							</select>
						</div>
						<div class="custom-control custom-checkbox">
							<input type="checkbox" class="custom-control-input"
								id="same-address"> <label class="custom-control-label"
								for="same-address"> 배송 정보를 저장하겠습니다. </label>
						</div>
						<hr class="mb-4">

						<!-- 배송방식 선택 -->
						<h4 class="mb-3">배송방식 선택</h4>

						<div class="d-block my-3">
							<div class="custom-control custom-radio">
								<input id="credit" name="paymentMethod" type="radio"
									class="custom-control-input" checked required> <label
									class="custom-control-label" for="credit">일반배송 : 배송비 무료</label>
							</div>
							<div class="custom-control custom-radio">
								<input id="debit" name="paymentMethod" type="radio"
									class="custom-control-input" required> <label
									class="custom-control-label" for="debit">특급배송 : 배송비
									5000원</label>
							</div>
						</div>

						<hr class="mb-4">
						<button class="btn btn-outline-dark btn-lg btn-block"
							type="submit">다음 단계 진행</button>
						<hr class="mb-4">
					</form>
				</div>
			</div>
		</div>
	</section>

	<!-- footer -->
	<jsp:include page="../common/footer.jsp" />

	<script src="${ pageContext.servletContext.contextPath }/resources/js/shoes/pay.js"></script>
</body>
</html>