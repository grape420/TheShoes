/* 클릭 시 디테일 페이지로 이동 */
$(function() {
		$("#noticeTable td").hover(function() {
			$(this).parent().css({"cursor":"pointer"});
		}).click(function() {
			let categoryOrder = $(this).parent().children(":eq(0)").text();
			console.log(categoryOrder);
			location.href = "${ pageContext.servletContext.contextPath }/board/detail?categoryOrder=" + categoryOrder;
		});
	});