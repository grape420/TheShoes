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
    $('#title_count').html(+content.length+" / 40");    //글자수 실시간 카운팅

    if (content.length > 40){
        alert("최대 40자까지 입력 가능합니다.");
        $(this).val(content.substring(0, 40));
        $('#title_count').html("(40 / 40)");
    }
});

$('#content_body').keydown(function (){
    var content = $(this).val();
    $('#content_count').html(+content.length+" / 2000");    //글자수 실시간 카운팅
	
    if (content.length > 2000){
        alert("최대 2000자까지 입력 가능합니다.");
        $(this).val(content.substring(0, 2000));
        $('#content_count').html("(2000 / 2000)");
    }
});

/* 사진 등록 */

function lodaFile(input) {
	var file = input.files[0];
	
	var name = document.getElementById()
}


/*$(document).ready(function(){
	$("#resell_img").click(function() {
		$("ul#img_body1").show();
		
		var lastImgNo = $("#resell_img:last").attr("id").replace("img_body", "");
		
		var newImg = $("#resell_img:eq(1)").clone();
		
		newImg.attr("id", "img_body" + (parseInt(lastImgNo) + 1));
		
		if(lastImgNo == 4) {
			alert("5개 이상 등록 할 수 없습니다.")
		} else {
			$("resell_img").append(newImg);
		}
	});
});*/

const $resell_img = document.getElementById("resell_imgfile");

$resell_img.onclick = function() {a
			document.getElementById("img_body1").click();
		}	
		
function loadImg(value, num) {
    if (value.files && value.files[0]) {
      const reader = new FileReader();

      reader.readAsDataURL(value.files[0]);

      reader.onload = function(e) {
        switch(num) {
          case 1 : document.getElementById("resell_imgfile").src = e.target.result; break;

        }
      }
    }
  }

