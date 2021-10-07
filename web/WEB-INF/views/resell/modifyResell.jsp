<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="${ pageContext.servletContext.contextPath }/resources/css/resell/regResell.css">
<link rel="shortcut icon"
	href="${ pageContext.servletContext.contextPath }/resources/uses/the-shoes-favicon.png">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>THE SHOES</title>
</head>
<body>
	<!-- header -->
	<jsp:include page="../common/header.jsp" />

	<!-- section -->
	<!-- section -->
	<section>
		<div class="wrap">
			<h3 class="titleA">
				기본정보 <span class="pill">*필수항목</span>
			</h3>
			<ul class="sell_table">
				<li>
					<div class="left">
						<p class="text pill_text">상품이미지</p>
						<span class="count">(0/12)</span>
					</div>
					<div class="right">
						<ul class="img_list">
							<li class="input_img">이미지 등록<input type="file"
								accept="image/jpg, image/jpeg, image/png" multiple=""></li>
							<!--이미지 등록했을때 화면 필요 없을시 아래의 내용 삭제-->
							<!--<li>
                  <div class="title_img">대표이미지</div>
                  <img src="image/search02.jpg" alt="상품이미지">
                  <button type="button" class="close_img"></button>
                </li>-->
							<!--이미지 등록했을때 화면 필요 없을시 아래의 내용 삭제-->
						</ul>
						<p class="p"></p>
						<div class="detail_p blue">
							<p class="bold">* 상품 이미지는 640x640에 최적화 되어 있습니다.</p>
							<p>- 이미지는 상품등록 시 정사각형으로 짤려서 등록됩니다.</p>
							<p>- 이미지를 클릭 할 경우 원본이미지를 확인할 수 있습니다.</p>
							<p>- 이미지를 클릭 후 이동하여 등록순서를 변경할 수 있습니다.</p>
							<p>- 큰 이미지일경우 이미지가 깨지는 경우가 발생할 수 있습니다.</p>
							<p>최대 지원 사이즈인 640 X 640 으로 리사이즈 해서 올려주세요.(개당 이미지 최대 10M)</p>
						</div>
					</div>
				</li>
				<li>
					<div class="left">
						<p class="text pill_text">제목</p>
					</div>
					<div class="right">
						<input type="text" id="productName" placeholder="상품 제목을 입력해 주세요."
							style="width: 92%;" onkeyup="onKeyUp()" /> <span
							class="count black">0/40</span>
						<!--제목 input 클릭시 나옴 필요 없을시 아래의 내용 삭제-->

						<div id="twoName">
							<!--<p class="input_show" >상품명을 2자 이상 입력해주세요.</p>-->
						</div>
						<!--제목 input 클릭시 나옴 필요 없을시 아래의 내용 삭제-->
						<p></p>
					</div>
				</li>
				<li>
					<div class="left">
						<p class="text pill_text">설명</p>
					</div>
					<div class="right">
						<textarea placeholder="상품 설명을 입력해 주세요."></textarea>
						<span class="count black right_p">0/2000</span>
					</div>
				</li>
				<li>
					<div class="left">
						<p class="text">수량</p>
					</div>
					<div class="right">
						<input type="text" value="1" style="width: 240px;" /> <span
							class="count black">개</span>
					</div>
				</li>
			</ul>

			<div class="btnArea">
				<div class="wrap bg-black">
					<a href="#n" class="black_btn">수정하기</a>
				</div>
			</div>
		</div>
	</section>

	<!-- footer -->
	<jsp:include page="../common/footer.jsp" />
	
	<script src="${ pageContext.servletContext.contextPath }/resources/js/resell/regResell.js"></script>
</body>
</html>