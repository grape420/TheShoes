<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/member/signup.css">
<link rel="shortcut icon" href="${ pageContext.servletContext.contextPath }/resources/uses/the-shoes-favicon.png">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>THE SHOES</title>
</head>
<body>
	<jsp:include page="../common/header.jsp" />

	<!-- section -->
    <section>
      <div class="section-main-div">
        <img class="logo rounded mx-auto d-block" src="${ pageContext.servletContext.contextPath }/resources/uses/Logo.png">
        <br><br><br>
        <h2 class="signup-text">회원 가입</h2>
        <br>
        <form class="signup-form" action="#" method="POST">
          <input required type="text" name="id" id="id" class="form-control" placeholder="사용하실 ID를 입력해주세요." autofocus>
          <label class="id-result" id="id-result"></label>
          <br>
          <input required type="password" name="password" id="password" class="form-control" placeholder="영문 대 소문+숫자+특수문자 8~16자리">
          <br>
          <input required type="password" name="passwordCheck" id="passwordCheck" class="form-control" placeholder="패스워드를 다시 입력해주세요.">
          <label class="password-result" id="password-result"></label>
          <br>
          <input required type="text" name="name" id="name" class="form-control" placeholder="이름을 입력해 주세요.">
          <label class="name-result" id="name-result"></label>
          <br>
          <input required type="text" name="birth" id="birth" class="form-control" placeholder="생년월일    예)19990719">
          <label class="birth-result" id="birth-result"></label>
          <br>
          <input required type="text" name="phone" id="phone" class="form-control" placeholder="휴대폰 번호 '-'표 없이 입력해 주세요.">
          <label class="phone-result" id="phone-result"></label>
          <br>
          <input required type="text" name="email" id="email" class="form-control" placeholder="이메일   예)test123@example.com">
          <label class="email-result" id="email-result"></label>
          <h5>이용약관</h5>
          <textarea readonly>개인정보 처리 방침
            1. "회원"은 언제든지 고객센터 또는 내 정보 관리 메뉴 등을 통하여 이용계약 해지(탈퇴) 신청을 할 수 있으며, "회사"는 관련 법령 등이 정하는 바에 따라 이를 즉시 처리합니다. 다만, 아래와 같은 경우 해지(탈퇴) 처리가 제한될 수 있습니다.가. "회원"에게 부과된 서비스 수수료나 부과된 페널티 금액의 미납이 있는 경우, 본 약관 제16조 제3항의 "마이너스(-) 포인트"가 남아 있는 경우, "회사"와 "회원" 사이에 분쟁 계속 중인 경우 등과 같이 이용계약을 해지하는 것이 적절하지 않은 경우에는 해당하는 사유가 완전히 해소될 때까지 해지(탈퇴) 처리가 제한될 수 있습니다.나. 만약 현재 진행 중인 거래, 문의, 또는 민원이 있거나 본 약관 제7조에 따라 이용제한 등의 조치가 된 경우에는 해지(탈퇴) 신청이 불가능하며, 해당하는 사유가 완전히 처리 완료된 후 본 약관 및 운영정책에서 정하는 바에 따라 탈퇴 및 이용계약 해지가 가능합니다.
            2.  "회원"이 계약을 해지할 경우, 관련법 및 개인정보취급방침에 따라 "회사"가 회원정보를 보유하는 경우를 제외하고는 해지 즉시 "회원"의 모든 데이터는 소멸됩니다.
            3. "회원"이 계약을 해지하는 경우, "회원"이 작성한 "게시물" 중 피드, 블로그 등과 같이 본인 계정에 등록된 게시물 일체는 삭제됩니다. 다만, 타인에 의해 담기, 스크랩 등이 되어 재게시되거나, 공용게시판에 등록된 "게시물" 등은 삭제되지 않으니 사전에 삭제 후 탈퇴하시기 바랍니다
            4. 이용계약의 해지(탈퇴)는 "회원"이 해지 이전에 거래한 "상품"과 관련하여 발생한 책임 및 "회사" 및 거래 상대방 등과의 관계에서 기발생한 권리관계 및 손해배상 청구권 등 기존 권리관계에 영향을 미치지 아니합니다.

            **이용계약 해지(서비스 탈퇴)**

            사용자가 THE SHOES 서비스의 이용을 더 이상 원치 않는 때에는 언제든지 THE SHOES 서비스 내 제공되는 메뉴를 이용하여 THE SHOES 서비스 이용계약의 해지 신청을 할 수 있으며, THE SHOES는 법령이 정하는 바에 따라 신속히 처리하겠습니다. 다만, 거래사기 등의 부정이용 방지를 위해 거래를 진행중이거나 거래 관련 분쟁이 발생한 사용자는 이용계약 해지 및 서비스 탈퇴가 특정 기간 동안 제한될 수 있습니다. 이용계약이 해지되면 법령 및 개인정보처리방침에 따라 사용자 정보를 보유하는 경우를 제외하고는 사용자 정보나 사용자가 작성한 게시물 등 모든 데이터는 삭제됩니다. 다만, 사용자가 작성한 게시물이 제3자에 의하여 스크랩 또는 다른 공유 기능으로 게시되거나, 사용자가 제3자의 게시물에 댓글, 채팅 등 게시물을 추가하는 등의 경우에는 다른 이용자의 정상적 서비스 이용을 위하여 필요한 범위 내에서 THE SHOES 서비스 내에 삭제되지 않고 남아 있게 됩니다.

            **제 6 조 (이용계약의 종료)**

            1.회원은 이 약관에서 정한 절차에 따라 이용계약을 해지할 수 있습니다.

            2.회원의 해지
                ◦ ①회원은 언제든지 회사에서 미리 공지한 절차와 방식에 따라 회사에 해지의사를 통지함으로써 이용계약을 해지할 수 있습니다. 다만, 이용자는 해지의사를 통지하기 전에 모든 진행중인 판매절차를 완료, 철회 또는 취소해야만 합니다. 이 경우 판매의 철회 또는 취소로 인한 불이익은 회원 본인이 부담하여야 합니다.
                ◦ ②이용계약은 회원의 해지의사가 회사에게 도달한 때에 종료됩니다.
                ◦ ③회원이 계약을 해지하는 경우, 회원 본인 계정에 등록된 게시물 또는 회원이 작성한 게시물 일체는 삭제됩니다. 다만, 다른 회원에 의해 스크랩되어 게시되거나 공용 게시판에 등록된 게시물은 삭제되지 않습니다.
                ◦ ④본 조에 따라 해지를 한 회원은 이 약관이 정하는 이용자가입절차와 관련조항에 따라 다시 가입할 수 있습니다. 다만 회원이 중복참여가 제한된 판촉이벤트 중복 참여 등 부정한 목적으로 이용자탈퇴 후 재가입 신청하는 경우 및 회사가 이용계약을 해지한 경우 회사는 재가입을 제한할 수 있습니다.
                ◦ ⑤회사는 다음과 같은 사유가 있는 경우 이용 계약 해지 절차를 보류할 수 있습니다.
                    ▪ (1)이용 계약 해지의 의사표시를 한 자가 회원 본인 여부를 확인할 수 없는 경우
                    ▪ (2)이용계약 해지의 의사표시를 한 회원의 구매 또는 판매 진행 중인 거래절차가 완료되지 않은 경우
                    ▪ (3)구매자에 대한 환불 등으로 인하여 회원이 서비스 이용에 관하여 회사에 변제할 채무가 남아있는 경우
                    ▪ (4)이용 계약 해지의 의사표시를 한 회원에 관한 거래 사기 및 분쟁 문제가 해결되지 않은 경우

            3.회사의 해지
                ◦ ①회사는 이 약관에서 정한 절차에 따라 이용계약을 해지할 수 있습니다.
                ◦ ②회사는 다음과 같은 사유가 있는 경우, 이용계약을 해지할 수 있습니다. 이 경우 회사는 이용자에게 e-mail 또는 기타 수단을 통하여 해지사유를 밝혀 해지의사를 통지합니다. 이 경우 회사는 해당 이용자에게 사전에 해지사유에 대한 의견진술 기회를 부여할 수 있습니다.
                    ▪ (1)회원에게 회사가 정하고 있는 이용신청의 승낙거부사유가 있거나 이 약관이 금지하는 행위를 한 경우
                    ▪ (2)허위의 정보를 기재하거나 회사가 요청하는 정보를 제공하지 않은 경우
                    ▪ (3)서비스 이용 관련하여 회원(또는 이용자)이 부담하는 채무를 기일에 지급하지 않은 경우
                    ▪ (4)다른 사람의 서비스 이용을 방해하거나 그 정보를 도용하는 등 거래질서를 위협하는 경우
                    ▪ (5)회원이 매매부적합물품을 판매 등록하거나, 기타 공공질서 및 미풍양속에 위배되는 물품 거래행위를 하거나 시도한 경우
                    ▪ (6)다른 회원 또는 타인의 권리나 명예, 신용 기타 정당한 이익을 침해하거나 대한민국 법령 또는 공서양속에 위배되는 행위를 한 경우
                    ▪ (7)회원이 실제 물품을 판매하려는 의사없이 물품등록 한 경우(이하 "판매가장등록" 이라 함)또는 이를 알고 구매 및 판매 받은 것으로 인정되는 경우
                    ▪ (8)회사의 직거래 등 회사가 제공하는 서비스의 원활한 진행을 방해하는 행위를 하거나 시도한 경우
                    ▪ (9)회원에게 파산, 금치산, 한정치산, 회생, 파산의 결정 또는 선고, 사망, 실종선고, 해산, 부도 등 정상적 서비스 이용을 불가능하게 하거나 곤란하게 하는 사유가 발생한 경우(다만, 이 경우 회사는 이용계약 해지 대신 거래안전 보호를 위해 회원자격정지, 서비스이용 제한 등의 조치를 취할 수 있습니다.)
                    ▪ (10)기타 회원이 이 약관에 위배되는 행위를 하거나 이 약관에서 정한 해지사유 또는 회사 정책에 위반되는 경우가 발생한 경우
            • 4.이용계약은 회사의 해지의사가 회원에게 도달한 때에 종료되나, 회원이 제공한 연락처 오류로 인하여 회사가 해지의사를 통지할 수 없는 경우에는 회사가 e-mail 또는 기타 수단을 통하여 해지의사를 공지하는 때에 종료됩니다.
            • 5.회사가 이용계약을 해지하는 경우, 회사는 별도의 통지 없이 해당 회원과 관련된 물품과 거래를 취소할 수 있습니다.
            • 6.회사는 회원이 계속해서 12개월 이상 로그인하지 않는 경우 회원정보의 보호 및 운영의 효율성을 위해 이용을 제한할 수 있습니다.
            • 7.회원이 제20조의 규정을 위반한 경우 회사는 이용계약을 해지할 수 있고, 이로 인하여 서비스 운영에 손해가 발생한 경우 이에 대한 민∙형사상 책임도 물을 수 있습니다.
            • 8.해지된 경우 회원 본인 계정에 등록된 게시물 또는 회원이 작성한 게시물 일체는 삭제됩니다. 다만, 다른 회원에 의해 스크랩되어 게시되거나 공용 게시판에 등록된 게시물은 삭제되지 않습니다.
            • 9.이용계약의 종료와 관련하여 발생한 손해는 이용계약이 종료된 해당 회원이 책임을 부담하여야 하고, 회사는 일체 책임을 지지 않습니다.
          </textarea>
          <div class="custom-control custom-checkbox">
            <input type="checkbox" class="custom-control-input" id="same-address" required>
            <label class="custom-control-label" for="same-address"> 이용약관의 동의 하겠습니다. </label>
          </div>
          <br><br>
          <button type="submit" class="hsy-btn btn btn-lg btn-block btn-outline-dark" value="로그인">회원가입</button>
        </form>
      </div>
    </section>
    
    <script>
      /* 정규표현식을 이용 */
      $("#id").change(function() {
        var idExp = /^(?=.*[a-zA-Z])(?!=.*[$@$!%*?&])(?=.*[0-9]).{4,12}$/;

        if(!idExp.test($(this).val())) {
          $("#id-result").text("영문,숫자 4~12글자로 작성 해 주세요(영문 대소문자 구분)").css("color", "red");
          $(this).val("").focus();
        } else {
          $("#id-result").text("").css("color", "green");
        }
      })

      $("#password").change(function() {
        var passwordEmp = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,16}/;

        if(!passwordEmp.test($(this).val())) {
          $("#password-result").text("영문, 숫자, 특수문자를 반드시 포함한 8~16글자로 작성 해 주세요(영문 대소문자 구분)").css("color", "red");
          $(this).focus();
        }else {
          $("#password-result").text("").css("color", "green");
        }
      })

      $("#passwordCheck").change(function() {
        if ($("#password").val() != $(this).val()) {
          $("#password-result").text("비밀번호가 일치하지 않습니다.").css("color", "red");
          $(this).focus();
        } else {
          $("#password-result").text("").css("color", "green");
        }
      })

      $("#name").change(function() {

        /* 한글자만 최소 2자 이상 */
        var regExp = /^[가-힣]{2,}$/;

        if (!regExp.test($(this).val())) {       // 사용자가 한글 2자 이상을 여겼을 때
            $("#name-result").text("한글로 2자 이상 입력하세요").css("color", "red");
            $(this).val("").focus();
        } else {
            $("#name-result").text("").css("color", "blue");
            $(this).css("background", "white");
        }
      })

      $("#birth").change(function() {
        var birthExp = /^(19|20)[0-9]{2}(0[1-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/;

        if(!birthExp.test($(this).val())) {
          $("#birth-result").text("올바르지 않은 생년월일입니다.").css("color", "red");
          $(this).focus();
        }else {
          $("#birth-result").text("").css("color", "green");
        }
      })

      $("#phone").change(function() {
        var phoneExp = /^[0-9]{11}$/;

        if(!phoneExp.test($(this).val())) {
          $("#phone-result").text("올바르지 않은 휴대폰 번호 형식입니다.").css("color", "red");
          $(this).focus();
        }else {
          $("#phone-result").text("").css("color", "green");
        }
      })

      $("#email").change(function() {
        var emailExp = /^[a-z0-9_+.-]+@([a-z0-9-]+\.)+[a-z0-9]{2,4}$/

        if(!emailExp.test($(this).val())) {
          $("#email-result").text("올바르지 않은 이메일 형식입니다.").css("color", "red");
          $(this).focus();
        }else {
          $("#email-result").text("").css("color", "green");
        }
      })
    </script>

	<jsp:include page="../common/footer.jsp" />
</body>
</html>