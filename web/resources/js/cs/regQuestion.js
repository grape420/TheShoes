const $titleImgArea = document.getElementById("titleImg");

$titleImgArea.onclick = function() {
	document.getElementById("thumbnailImg1").click();
}

function loadImg(value, num) {
	if (value.files && value.files[0]) {
		const reader = new FileReader();

		reader.readAsDataURL(value.files[0]);

		reader.onload = function(e) {
			switch (num) {
				case 1: document.getElementById("titleImg").src = e.target.result; break;
			}
		}
	}
}