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


$('#productName').keydown(function (){
    var content = $(this).val();
    $('#title_count').html(+content.length+" / 40");    // 제목 글자수 실시간 카운팅

    if (content.length > 40){
        alert("최대 40자까지 입력 가능합니다.");
        $(this).val(content.substring(0, 40));
        $('#title_count').html("(40 / 40)");
    }
});

$('#content_body').keydown(function (){
    var content = $(this).val();
    $('#content_count').html(+content.length+" / 2000");    // 설명 글자수 실시간 카운팅
	
    if (content.length > 2000){
        alert("최대 2000자까지 입력 가능합니다.");
        $(this).val(content.substring(0, 2000));
        $('#content_count').html("(2000 / 2000)");
    }
});

/* 사진 등록 */

const $img_body1 = document.getElementById("img_file1");
const $img_body2 = document.getElementById("img_file2");
const $img_body3 = document.getElementById("img_file3");
const $img_body4 = document.getElementById("img_file4");
const $img_body5 = document.getElementById("img_file5");
const $img_body6 = document.getElementById("img_file6");

$img_body1.onclick = function() {
			document.getElementById("resell_img1").click();
		}	
$img_body2.onclick = function() {
			document.getElementById("resell_img2").click();
		}	
$img_body3.onclick = function() {
			document.getElementById("resell_img3").click();
		}	
$img_body4.onclick = function() {
			document.getElementById("resell_img4").click();
		}
$img_body5.onclick = function() {
			document.getElementById("resell_img5").click();
		}
$img_body6.onclick = function() {
			document.getElementById("resell_img6").click();
		}	
		
function loadImg(value, num) {
    if (value.files && value.files[0]) {
      const reader = new FileReader();

      reader.readAsDataURL(value.files[0]);

      reader.onload = function(e) {
        switch(num) {
          case 1 : document.getElementById("img_file1").src = e.target.result; break;
          case 2 : document.getElementById("img_file2").src = e.target.result; break;
          case 3 : document.getElementById("img_file3").src = e.target.result; break;
          case 4 : document.getElementById("img_file4").src = e.target.result; break;
		  case 5 : document.getElementById("img_file5").src = e.target.result; break;
		  case 6 : document.getElementById("img_file6").src = e.target.result; break;

        }
      }
    }
  }

