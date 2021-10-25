<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/resell/resellDetail.css">
<link rel="shortcut icon" href="${ pageContext.servletContext.contextPath }/resources/uses/the-shoes-favicon.png">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>THE SHOES</title>
</head>
<body>

	<!-- header -->
	<jsp:include page="../common/header.jsp" />

	<!-- section -->
	<section>
		<%-- <c:forEach var="resellThumb" items="${ requestScope.resellDetail.resellThumb }"> --%>
		<div class="info-section">
			<ul class="images">
			
				<c:forEach var="resell" items="${ requestScope.resellDetail.resellThumb }">
				<li>
					<figure>
						<img style="" src="/TheShoes/resources/upload/image/resellShoes/${ resell.savedName }" alt="">
					</figure>
				</li>

				</c:forEach>
			</ul>
			<div class="info">
				<h1 class="txt title">${requestScope.resellDetail.boardTitle}</h1>
				<p class="txt">${requestScope.resellDetail.boardContent}</p>
			</div>
		</div>
		<div class="comments">
		
			<div class="head">
				<h1>
					댓글&nbsp;<span>${ commentCnt }</span>
				</h1>
			</div>
			<c:forEach var="resellComments" items="${ requestScope.resellDetail.comments }">
			<div class="boad">
				<div class="boad-area">
					<div class="boad-body">
						<div class="boad-icon" href="">
							<div class="comments-date">
								<span><fmt:formatDate value="${ resellComments.commentsRegDate }" pattern="yyyy:MM:dd HH:mm"/></span>
							</div>
						</div>
						<div class="boad-body2">
							<div class="user">
								<a class="user-id">${ resellComments.commentsId }</a>
								<c:if test="${ resellComments.commentsId eq resellDetail.boardId }">
									<span style="color: red;">&nbsp;&nbsp;&nbsp;(작성자)</span>
								</c:if>
							</div>
							<c:if test="${ resellComments.commentsYn eq 'N' }">
								<div class="content" >${ resellComments.commentsContent }</div>
							</c:if>
							<c:if test="${ resellComments.commentsYn eq 'Y' }">
								<c:choose>
									<c:when test="${ resellComments.commentsId eq entryMember.id || resellDetail.boardId eq entryMember.id }">
										<div class="content">${ resellComments.commentsContent }</div>
									</c:when>
									<c:otherwise>
										<div class="content">비공개 댓글입니다.</div>
									</c:otherwise>
								</c:choose>
							</c:if>
							<c:if test="${ resellComments.commentsId eq entryMember.id }">
								<button class="comments-remove" id="commentsBtn" type="button" onclick="location.replace('${ pageContext.servletContext.contextPath }/resell/comments/delete?shoesNo=${ resellDetail.boardNo }&deleteComment=${ resellComments.commentsNo }');">
									<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAgCAYAAAAFQMh/AAAAAXNSR0IArs4c6QAABFdJREFUSA3Nl11MVEcUgPfnIj8B1kRi4AFI9cEiITFGfZXUYNWKxJ9CtBqC0WCMuoEGgfIPBsVsU7MpVdRV0qZpgkZLjU2qrYD6oCTw4A+YoGktTQhiIE1hC7td8Dsb7ua6ruxd2IdOMsy5Z84535wzM/cuRkOYW0tLS8zw8PCR6enpfKPRaCH865mZmRuKolysrKx8qeKMqhCO0WazJUxMTNwBlAF0gJjXkBGNHzN+wHi4pqbme2GFDexwOOIGBwf/JHgccW0pKSm1BQUFkwKRVl9fv4cqnDWZTNbq6urWsIA7OjqUrq6uH4DmwFDI7nRtbW2Zl6j509DQ8JHH42k3m83rzBr9vMS2tjZzT0+PlG9LVFTURrJahvxZZmZmdGdn56/aoCzwd/Qr0a0yaSdClQXa39//HRlm4fvH5ORkc0xMzKdk3kU/Ttan/GOS7RXsc+YNxtnU19fXSuBNERERWfHx8euBucfHx38LAv8PO8u8wAKtq6u7TIBsMthYUVHRW1xcPBoZGbmBhTjngrMVW7F5FfLhAmrkhDoYd3I3s7ib3QTytebm5tiRkZGbKBbHxsZucDqdUtr19NMs9CH6K4zHQgLjLNALOOdKpkAf+IgaQV4iQ0ND7aiW+sE9QG+npaVl6y61QCnvOcY8oJveBxV+YWGhMzU1NRvxLyk75e0Wf9rfsv+5ubkeXRnPQr8h0F7KuxnofQEEa5z6RZz6XvzTgV7nuuWXlpb+I3667jFvm69xzAf6CdB7wYDqfEZGRgnQ3QJNTEzMs1qt/6pzQUtNee04FwDfCvSu6hhsxK+EEp9UoZTfrfWZE8wL4CuMD7Cn2VVVVZ1ax7lkDmAxi5VT7M3UHyq+7wWzYhvzh+g5QO+IsZ6Gn5VMv5wLKnGUQMHItAn9EZxz+IzdDmQTSAf0KJmeCQYV33cyBir7YmVuO9BfAgEC6SjvYaB2PVDxf+s6seITOJfgvAOovH10NfwKMTxL/1FOb6A99Q/kKzWZ1jF5nIO0iz3VDSXTAyw2JKgswpsxH+hdHIg2AoyQ7QDjIAu4zAJu+a9U+wx0P7YX0enOVPX37jHQJBQu+nkCyX3bhq5SNQo0Ut58bC4wFzJU4nlLDWwNcj/lrhIlmXxB0OUiB2rM72X+EtVp17un/nHUPRZwrzpJ0BUEnZJSIqch/8xh65B5dHtYaOtCoBLHJN9Pxg8J9EQUs20ZwQ8CdaDfhywfCAPlzUP+FvGn+WY6G9+gjI2NreaBV7HpqU+pKJ8DSIiOju52u92LXS7XM6C7BcpCFgwVjkJWUmYDXx5fxnwMfL8q7Ha7a2pqygxQoDcWmqmwpAl4LeN4WVnZy/LyckNTU1McoJVkJz9D00dHR9PFkOfepKQkXS8HsQ/WjJzkAYwS6A/IKB1Asjghexie0x+he2GxWOxFRUVDMheOJqd6EV3usMhX2etHjI+Tk5Ofav8FQRfe1tjYuCS8Ef/n0d4Ah7Y0Xn+VgFMAAAAASUVORK5CYII="
										width="15" height="16" alt="댓글 삭제">삭제
								</button>
							</c:if>
						</div>
					</div>
				</div>
			</div>
			</c:forEach>
			<form action="${ pageContext.servletContext.contextPath }/resell/detail" method="post">
				<div class="area1">
					<div class="write">
						<textarea name="content" id="commentsContent" placeholder="댓글 등록"></textarea>
						<input name="boardNo" value="${ resellDetail.boardNo }" hidden>
						<p class="secret-box pb-0 mb-0 mt-2">
							<input type="checkbox" id="commentsYn" class="secret-check" value="check" name="commentsYn">
							<label class="mb-0" for="commentsYn">&nbsp;비밀글</label>
						</p>
					</div>
					<div class="write2">
						<div class="num1"><span id="content_count">0 / 300</span></div>
							<button class="comments-click mt-2 mb-2" id="commentsBtn" type="submit">
							<img
								src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAgCAYAAAAFQMh/AAAAAXNSR0IArs4c6QAABFdJREFUSA3Nl11MVEcUgPfnIj8B1kRi4AFI9cEiITFGfZXUYNWKxJ9CtBqC0WCMuoEGgfIPBsVsU7MpVdRV0qZpgkZLjU2qrYD6oCTw4A+YoGktTQhiIE1hC7td8Dsb7ua6ruxd2IdOMsy5Z84535wzM/cuRkOYW0tLS8zw8PCR6enpfKPRaCH865mZmRuKolysrKx8qeKMqhCO0WazJUxMTNwBlAF0gJjXkBGNHzN+wHi4pqbme2GFDexwOOIGBwf/JHgccW0pKSm1BQUFkwKRVl9fv4cqnDWZTNbq6urWsIA7OjqUrq6uH4DmwFDI7nRtbW2Zl6j509DQ8JHH42k3m83rzBr9vMS2tjZzT0+PlG9LVFTURrJahvxZZmZmdGdn56/aoCzwd/Qr0a0yaSdClQXa39//HRlm4fvH5ORkc0xMzKdk3kU/Ttan/GOS7RXsc+YNxtnU19fXSuBNERERWfHx8euBucfHx38LAv8PO8u8wAKtq6u7TIBsMthYUVHRW1xcPBoZGbmBhTjngrMVW7F5FfLhAmrkhDoYd3I3s7ib3QTytebm5tiRkZGbKBbHxsZucDqdUtr19NMs9CH6K4zHQgLjLNALOOdKpkAf+IgaQV4iQ0ND7aiW+sE9QG+npaVl6y61QCnvOcY8oJveBxV+YWGhMzU1NRvxLyk75e0Wf9rfsv+5ubkeXRnPQr8h0F7KuxnofQEEa5z6RZz6XvzTgV7nuuWXlpb+I3667jFvm69xzAf6CdB7wYDqfEZGRgnQ3QJNTEzMs1qt/6pzQUtNee04FwDfCvSu6hhsxK+EEp9UoZTfrfWZE8wL4CuMD7Cn2VVVVZ1ax7lkDmAxi5VT7M3UHyq+7wWzYhvzh+g5QO+IsZ6Gn5VMv5wLKnGUQMHItAn9EZxz+IzdDmQTSAf0KJmeCQYV33cyBir7YmVuO9BfAgEC6SjvYaB2PVDxf+s6seITOJfgvAOovH10NfwKMTxL/1FOb6A99Q/kKzWZ1jF5nIO0iz3VDSXTAyw2JKgswpsxH+hdHIg2AoyQ7QDjIAu4zAJu+a9U+wx0P7YX0enOVPX37jHQJBQu+nkCyX3bhq5SNQo0Ut58bC4wFzJU4nlLDWwNcj/lrhIlmXxB0OUiB2rM72X+EtVp17un/nHUPRZwrzpJ0BUEnZJSIqch/8xh65B5dHtYaOtCoBLHJN9Pxg8J9EQUs20ZwQ8CdaDfhywfCAPlzUP+FvGn+WY6G9+gjI2NreaBV7HpqU+pKJ8DSIiOju52u92LXS7XM6C7BcpCFgwVjkJWUmYDXx5fxnwMfL8q7Ha7a2pqygxQoDcWmqmwpAl4LeN4WVnZy/LyckNTU1McoJVkJz9D00dHR9PFkOfepKQkXS8HsQ/WjJzkAYwS6A/IKB1Asjghexie0x+he2GxWOxFRUVDMheOJqd6EV3usMhX2etHjI+Tk5Ofav8FQRfe1tjYuCS8Ef/n0d4Ah7Y0Xn+VgFMAAAAASUVORK5CYII="
								width="15" height="16" alt="댓글 등록">등록
						</button>
					</div>
				</div>
			</form>
		</div>
	</section>
	<!-- footer -->
	<jsp:include page="../common/footer.jsp" />
	
	<script>
		$('#commentsContent').keydown(function (){
		    var content = $(this).val();
		    $('#content_count').html(+content.length+" / 300");    // 설명 글자수 실시간 카운팅
			
		    if (content.length > 300){
		        alert("최대 300자까지 입력 가능합니다.");
		        $(this).val(content.substring(0, 300));
		        $('#content_count').html("(300 / 300)");
		    }
		});
	</script>
</body>
</html>