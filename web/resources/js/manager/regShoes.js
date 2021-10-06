const $titleImgArea = document.getElementById("titleImg");
const $contentImgArea1 = document.getElementById("contentImg1");
const $contentImgArea2 = document.getElementById("contentImg2");
const $contentImgArea3 = document.getElementById("contentImg3");

$titleImgArea.onclick = function() {
	document.getElementById("thumbnailImg1").click();
}
$contentImgArea1.onclick = function() {
	document.getElementById("thumbnailImg2").click();
}
$contentImgArea2.onclick = function() {
	document.getElementById("thumbnailImg3").click();
}
$contentImgArea3.onclick = function() {
	document.getElementById("thumbnailImg4").click();
}
$contentImgArea4.onclick = function() {
	document.getElementById("thumbnailImg5").click();
}
$contentImgArea5.onclick = function() {
	document.getElementById("thumbnailImg6").click();
}

function loadImg(value, num) {
	if (value.files && value.files[0]) {
		const reader = new FileReader();

		reader.readAsDataURL(value.files[0]);

		reader.onload = function(e) {
			switch (num) {
				case 1: document.getElementById("titleImg").src = e.target.result; break;
				case 2: document.getElementById("contentImg1").src = e.target.result; break;
				case 3: document.getElementById("contentImg2").src = e.target.result; break;
				case 4: document.getElementById("contentImg3").src = e.target.result; break;
				case 5: document.getElementById("contentImg4").src = e.target.result; break;
				case 6: document.getElementById("contentImg5").src = e.target.result; break;
			}
		}
	}
}