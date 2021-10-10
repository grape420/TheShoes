window.onload = function() {
	
	if(document.getElementsByTagName("td")) {
			const $tds = document.getElementsByTagName("td");
			for(let i = 0; i < $tds.length; i++) {
				
				$tds[i].onmouseenter = function() {
					this.parentNode.style.cursor = "pointer";
				}
				
				/* $tds[i].onmouseout = function() {
					this.parentNode.style.backgroundColor = "black";
				}*/
				
				$tds[i].onclick = function() {
					/* 게시물 번호까지 알아왔으니 이제 상세보기는 할 수 있겠죠? */
					const no = this.parentNode.children[0].innerText;
/*					location.href = "/TheShoes/board/detail?no=" + no;
*/					console.log(this);
					
					console.log(this.parentNode);
					console.log(this.parentNode.children);
					console.log(this.parentNode.children[0]);
					
				}
				
			}
			
		}
		
}