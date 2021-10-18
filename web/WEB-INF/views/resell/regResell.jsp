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
			<form class="resellReg" method="post" action="${ pageContext.servletContext.contextPath }/resell/regResell" enctype="multipart/form-data">
			<ul class="sell_table">
				<li>
					<div class="left">
						<p class="text pill_text">상품이미지</p>
						<span class="count" id="img_count">(0/4)</span>
					</div>
					<div class="right">
						<ul class="img_list">
							<li class="input_img" id="img_body1">
								<img id="img_file1">이미지 등록1<input type="file" name="resellFileName" accept="image/jpg, image/jpeg, image/png" id="resell_img1" onchange="loadImg(this, 1)">
							</li>
							<li class="input_img" id="img_body2">
								<img id="img_file2">이미지 등록2<input type="file" name="resellFileName1" accept="image/jpg, image/jpeg, image/png" id="resell_img2" onchange="loadImg(this, 2)">
							</li>
							<li class="input_img" id="img_body3">
								<img id="img_file3">이미지 등록3<input type="file" name="resellFileName2" accept="image/jpg, image/jpeg, image/png" id="resell_img3" onchange="loadImg(this, 3)">
							</li>
							<li class="input_img mt-4 mr-3" id="img_body4">
								<img id="img_file4">이미지 등록4<input type="file" name="resellFileName3" accept="image/jpg, image/jpeg, image/png" id="resell_img4" onchange="loadImg(this, 4)">
							</li>
							<li class="input_img mt-4" id="img_body5">
								<img id="img_file5">이미지 등록5<input type="file" name="resellFileName4" accept="image/jpg, image/jpeg, image/png" id="resell_img5" onchange="loadImg(this, 5)">
							</li>
							<li class="input_img mt-4" id="img_body6">
								<img id="img_file6">이미지 등록6<input type="file" name="resellFileName5" accept="image/jpg, image/jpeg, image/png" id="resell_img6" onchange="loadImg(this, 6)">
							</li>
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
						<input type="text" id="productName" class="textlength" placeholder="상품 제목을 입력해 주세요."
							style="width: 92%;" name="boardTitle" /> 
							<span class="count black" id="title_count">0/40</span>
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
						<textarea placeholder="상품 설명을 입력해 주세요." id="content_body" name="boardContent"></textarea>
						<span class="count black right_p" id="content_count">0/2000</span>
					</div>
				</li>
			</ul>

			<div class="btnArea">
				<div class="wrap bg-black">
					<button type="submit" class="black_btn">등록하기</button>
				</div>
			</div>
			</form>
		</div>
	</section>

	<!-- footer -->
	<jsp:include page="../common/footer.jsp" />
	
	<script src="${ pageContext.servletContext.contextPath }/resources/js/resell/regResell.js" type="text/javascript"></script>
</body>
</html>