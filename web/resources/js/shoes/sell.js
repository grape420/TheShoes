$(document).ready(function() {

	function scroll_btn() {
		var footer_top = $('footer').height();
		var scrollBottom = $(document).height() - $(window).height() - $(window).scrollTop();

		if (scrollBottom <= footer_top) {
			$('.btnArea').addClass('fixed');
		} else {
			$('.btnArea').removeClass('fixed');
		}
	}
	scroll_btn();
	$(window).scroll(function() {
		scroll_btn();
	});

	$('.red_btn').on('click', function() {
		var length = $('.img_list').children('li').length;

		if (length < 2) {
			$('.img_list').next('p').html(`<p class="input_show" >상품사진을 등록해주세요.</p>`);
			$('.input_img').css('border', '2px solid #dc5b5b');
		} else {
			$('.input_img').css('border', '1px solid rgb(230, 229, 239)');
		}
		onKeyUp();

	}
	);

});


function onKeyUp() {
	//var re2 = /^.{1,20}$/ 정규화 적용시 굳이 할필요없어서 2글자이상만조건으로 했습니다.

	if (!(document.getElementById('productName').value.length >= 2)) {
		document.getElementById('twoName').innerHTML = '<p class="input_show" >상품명을 2자 이상 입력해주세요.</p>';
		$('#productName').css('border', '2px solid #dc5b5b');
	} else {
		document.getElementById('twoName').innerHTML = '';
		$('#productName').css('border', '2px solid rgb(195, 194, 204)');
	}
}