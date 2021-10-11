<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="paging">
					
						<!-- 처음 페이지 버튼 -->
						<a href="#" class="btn_arr first" id="startPage">
							<i class="fa fa-chevron-left" aria-hidden="true"></i>
							<span class="hide">처음페이지</span>
						</a> 
					
						<!-- 이전페이지 -->
<%-- 						<c:if test="${ requestScope.selectCriteria.pageNo <= 1 }">
 --%>						
						<a href="#" class="btn_arr prev">
							<i class="fa fa-chevron-left" aria-hidden="true"></i>
							<span class="hide">이전페이지</span>
						</a> 
					
						<!-- 숫자 -->
						<a href="#" class="on">1</a>
						<!-- D : 활성화페이지일 경우 : on 처리 -->
						<a href="#">2</a> 
						<a href="#">3</a> 
						<a href="#">4</a> 
						<a href="#">5</a>
						
						<!-- 다음 페이지 -->
						<a href="#" class="btn_arr next">
							<i class="fa fa-chevron-right" aria-hidden="true"></i>
							<span class="hide">다음페이지</span>
						</a> 
						
						<!-- 마지막페이지 -->
						<a href="#" class="btn_arr last">
							<i	class="fa fa-chevron-right" aria-hidden="true"></i>
							<span class="hide">마지막페이지</span>
						</a>
					</div>
					
						<!-- 페이징처리 -->
	<!-- <script>
		const link = "${ pageContext.servletContext.contextPath }/board/list";
		let searchText = "";
		
		if(${ !empty requestScope.selectCriteria.searchCondition? true: false }) {
			searchText += "&searchCondition=${ requestScope.selectCriteria.searchCondition }";
		}
		
		if(${ !empty requestScope.selectCriteria.searchValue? true: false }) {
			searchText += "&searchValue=${ requestScope.selectCriteria.searchValue }";
		}
			
		if(document.getElementById("startPage")) {
			const $startPage = document.getElementById("startPage");
			$startPage.onclick = function() {
				location.href = link + "?currentPage=1" + searchText;
			}
		}
		
		if(document.getElementById("prevPage")) {
			const $prevPage = document.getElementById("prevPage");
			$prevPage.onclick = function() {
				location.href = link + "?currentPage=${ requestScope.selectCriteria.pageNo - 1 }" + searchText;
			}
		}
		
		if(document.getElementById("nextPage")) {
			const $nextPage = document.getElementById("nextPage");
			$nextPage.onclick = function() {
				location.href = link + "?currentPage=${ requestScope.selectCriteria.pageNo + 1 }" + searchText;
			}
		}
		
		if(document.getElementById("maxPage")) {
			const $maxPage = document.getElementById("maxPage");
			$maxPage.onclick = function() {
				location.href = link + "?currentPage=${ requestScope.selectCriteria.maxPage }" + searchText;
			}
		}
		
		function pageButtonAction(text) {
			location.href = link + "?currentPage=" + text + searchText;
		}
	</script> -->
					
</body>
</html>