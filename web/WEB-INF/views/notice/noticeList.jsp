<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/notice/noticeList.css">
<link rel="shortcut icon" href="${ pageContext.servletContext.contextPath }/resources/uses/the-shoes-favicon.png">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>THE SHOES</title>
</head>
<body>
	<!-- header -->
	<jsp:include page="../common/header.jsp" />

	<!-- section -->
	<section>

		<div class="container">
			<table class="table table-hover">
				<h2 style="font-weight: 900;">공지사항</h2>
				<tbody>
					<c:forEach var="i" begin="1" end="10">
						<tr>
							<td colspan="3"><a href="notice_detail.html" id="a1">[이벤트
									발표] LUCKY DRAW - 나이키 x 오프화이트 덩크로우 로트 50 & 샤넬 클래식 파우치</a></td>
							<td></td>
							<td></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

			<div class="paging">
				<a href="#" class="btn_arr first"><i class="fa fa-chevron-left"
					aria-hidden="true"></i><span class="hide">처음페이지</span></a> <a href="#"
					class="btn_arr prev"><i class="fa fa-chevron-left"
					aria-hidden="true"></i><span class="hide">이전페이지</span></a> <a href="#"
					class="on">1</a>
				<!-- D : 활성화페이지일 경우 : on 처리 -->
				<a href="#">2</a> <a href="#">3</a> <a href="#">4</a> <a href="#">5</a>
				<a href="#" class="btn_arr next"><i class="fa fa-chevron-right"
					aria-hidden="true"></i><span class="hide">다음페이지</span></a> <a href="#"
					class="btn_arr last"><i class="fa fa-chevron-right"
					aria-hidden="true"></i><span class="hide">마지막페이지</span></a>
			</div>
		</div>

	</section>

	<!-- footer -->
	<jsp:include page="../common/footer.jsp" />
</body>
</html>