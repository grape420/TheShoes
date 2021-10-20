<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/common/errorPage.css">
<link rel="shortcut icon" href="${ pageContext.servletContext.contextPath }/resources/uses/the-shoes-favicon.png">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>* { padding: 0; margin: 0; } canvas { background: #eee; display: block; margin: 0 auto; }</style>
<title>THE SHOES</title>
</head>
<body>
	<!-- header -->
	<jsp:include page="../common/header.jsp" />

	<!-- section -->
	<section>
		<div>
			<div>
				<h1 class="headline-2">NOT AVAILABLE</h1>
				<div>
					<h2 id="fadeAction" class="headline-3 m10-sm ta-sm-c">더 이상 확인 할 수 없는 페이지 입니다.</h2>
					<canvas id="myCanvas" width="480" height="320"></canvas>
					<c:choose>
						<c:when test="${ message eq 'login' }">
							<div>
								<p class="summary">
									로그인이 필요한 페이지 입니다., <br>로그인 후 사용해 주세요.
								</p>
							</div>
						</c:when>
						<c:otherwise>
							<div>
								<p class="summary">
									이용에 불편을 드린 점 진심으로 사과 드리며, <br>고객 여러분의 양해 부탁 드립니다.
								</p>
							</div>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
	</section>

	<!-- footer -->
	<jsp:include page="../common/footer.jsp" />
	
	<script>
		$("#myCanvas").slideUp(1);
		$("#fadeAction").click(function() {
			$("#myCanvas").slideDown(1000);
			startGame();
		});	
	
		function startGame() {
		    var canvas = document.getElementById("myCanvas");
		    var ctx = canvas.getContext("2d");
		    var ballRadius = 10;
		    var x = canvas.width/2;
		    var y = canvas.height-30;
		    var dx = 2;
		    var dy = -2;
		    var paddleHeight = 10;
		    var paddleWidth = 75;
		    var paddleX = (canvas.width-paddleWidth)/2;
		    var rightPressed = false;
		    var leftPressed = false;
		    var brickRowCount = 5;
		    var brickColumnCount = 3;
		    var brickWidth = 75;
		    var brickHeight = 20;
		    var brickPadding = 10;
		    var brickOffsetTop = 30;
		    var brickOffsetLeft = 30;
		    var score = 0;
		    var lives = 3;
		
		    var bricks = [];
		    for(var c=0; c<brickColumnCount; c++) {
		        bricks[c] = [];
		        for(var r=0; r<brickRowCount; r++) {
		            bricks[c][r] = { x: 0, y: 0, status: 1 };
		        }
		    }
		
		    document.addEventListener("keydown", keyDownHandler, false);
		    document.addEventListener("keyup", keyUpHandler, false);
		    document.addEventListener("mousemove", mouseMoveHandler, false);
		
		    function keyDownHandler(e) {
		        if(e.code  == "ArrowRight") {
		            rightPressed = true;
		        }
		        else if(e.code == 'ArrowLeft') {
		            leftPressed = true;
		        }
		    }
		    function keyUpHandler(e) {
		        if(e.code == 'ArrowRight') {
		            rightPressed = false;
		        }
		        else if(e.code == 'ArrowLeft') {
		            leftPressed = false;
		        }
		    }
		    function mouseMoveHandler(e) {
		        var relativeX = e.clientX - canvas.offsetLeft;
		        if(relativeX > 0 && relativeX < canvas.width) {
		            paddleX = relativeX - paddleWidth/2;
		        }
		    }
		    function collisionDetection() {
		        for(var c=0; c<brickColumnCount; c++) {
		            for(var r=0; r<brickRowCount; r++) {
		                var b = bricks[c][r];
		                if(b.status == 1) {
		                    if(x > b.x && x < b.x+brickWidth && y > b.y && y < b.y+brickHeight) {
		                        dy = -dy;
		                        b.status = 0;
		                        score++;
		                        if(score == brickRowCount*brickColumnCount) {
		                            alert("YOU WIN, CONGRATS!");
		                            document.location.reload();
		                        }
		                    }
		                }
		            }
		        }
		    }
		
		    function drawBall() {
		        ctx.beginPath();
		        ctx.arc(x, y, ballRadius, 0, Math.PI*2);
		        ctx.fillStyle = "#0095DD";
		        ctx.fill();
		        ctx.closePath();
		    }
		    function drawPaddle() {
		        ctx.beginPath();
		        ctx.rect(paddleX, canvas.height-paddleHeight, paddleWidth, paddleHeight);
		        ctx.fillStyle = "#0095DD";
		        ctx.fill();
		        ctx.closePath();
		    }
		    function drawBricks() {
		        for(var c=0; c<brickColumnCount; c++) {
		            for(var r=0; r<brickRowCount; r++) {
		                if(bricks[c][r].status == 1) {
		                    var brickX = (r*(brickWidth+brickPadding))+brickOffsetLeft;
		                    var brickY = (c*(brickHeight+brickPadding))+brickOffsetTop;
		                    bricks[c][r].x = brickX;
		                    bricks[c][r].y = brickY;
		                    ctx.beginPath();
		                    ctx.rect(brickX, brickY, brickWidth, brickHeight);
		                    ctx.fillStyle = "#0095DD";
		                    ctx.fill();
		                    ctx.closePath();
		                }
		            }
		        }
		    }
		    function drawScore() {
		        ctx.font = "16px Arial";
		        ctx.fillStyle = "#0095DD";
		        ctx.fillText("Score: "+score, 8, 20);
		    }
		    function drawLives() {
		        ctx.font = "16px Arial";
		        ctx.fillStyle = "#0095DD";
		        ctx.fillText("Lives: "+lives, canvas.width-65, 20);
		    }
		
		    function draw() {
		        ctx.clearRect(0, 0, canvas.width, canvas.height);
		        drawBricks();
		        drawBall();
		        drawPaddle();
		        drawScore();
		        drawLives();
		        collisionDetection();
		
		        if(x + dx > canvas.width-ballRadius || x + dx < ballRadius) {
		            dx = -dx;
		        }
		        if(y + dy < ballRadius) {
		            dy = -dy;
		        }
		        else if(y + dy > canvas.height-ballRadius) {
		            if(x > paddleX && x < paddleX + paddleWidth) {
		                dy = -dy;
		            }
		            else {
		                lives--;
		                if(!lives) {
		                    alert("GAME OVER");
		                    document.location.reload();
		                }
		                else {
		                    x = canvas.width/2;
		                    y = canvas.height-30;
		                    dx = 2;
		                    dy = -2;
		                    paddleX = (canvas.width-paddleWidth)/2;
		                }
		            }
		        }
		
		        if(rightPressed && paddleX < canvas.width-paddleWidth) {
		            paddleX += 7;
		        }
		        else if(leftPressed && paddleX > 0) {
		            paddleX -= 7;
		        }
		
		        x += dx;
		        y += dy;
		        requestAnimationFrame(draw);
		    }
		
		    draw();
	    }
	</script>
</body>
</html>