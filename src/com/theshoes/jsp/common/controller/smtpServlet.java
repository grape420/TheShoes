package com.theshoes.jsp.common.controller;

import java.io.IOException;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/member/smtp")
public class smtpServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;

   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
// 		사용자가 입력한 정보 받아오기
      String name = request.getParameter("name");         // 비밀번호를 변경할 회원 정보의 이름
      String toEmail = request.getParameter("email");      // 인증번호 전송받을 이메일
//      이름도 받아오기 - member dto와 비교 필요 
      
// 		받아온 정보와 값 비교 (id에서 확인 후 넘어온 값)
//      MemberDTO m = new MemberService().memberLogin(name);
//        if(m==null || !m.getEmail().equals(toEmail))
//        {
//            request.setAttribute("msg", "아이디나 이메일 정보가 맞지 않습니다");
//            request.setAttribute("loc", "/member/searchPw");
//            request.getRequestDispatcher("/views/common/msg.jsp").forward(request, response);
//            return;
//       }      
        
      // 사용할 메일 - naver
      String host = "smtp.naver.com";

      // 발신자의 메일 계정 및 비밀번호
      String fromEmail = "yujeong_study@naver.com";
      String pwd = "yj1128yujeong";

      // SMTP 서버 설정
      Properties props = new Properties();
      props.put("mail.smtp.host", host);
      props.put("mail.smtp.port", 465); // naver -> 465, ssl 연결 필요
      props.put("mail.smtp.auth", "true");
      props.put("mail.smtp.ssl.enable", "true"); // ssl 연결 설정
      props.put("mail.smtp.ssl.trust", "smtp.naver.com");

      // 인증 번호 생성기
      StringBuffer temp = new StringBuffer();
      Random rnd = new Random();
      for (int i = 0; i < 10; i++) {
         int rIndex = rnd.nextInt(3);
         switch (rIndex) {
         case 0:
            // a-z
            temp.append((char) ((int) (rnd.nextInt(26)) + 97));
            break;
         case 1:
            // A-Z
            temp.append((char) ((int) (rnd.nextInt(26)) + 65));
            break;
         case 2:
            // 0-9
            temp.append((rnd.nextInt(10)));
            break;
         }
      }
      
      // 생성된 인증번호 String으로 변환
      String AuthenticationKey = temp.toString();
      System.out.println("인증번호 " + AuthenticationKey);

      Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
         protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(fromEmail, pwd);
         }
      });

      MimeMessage msg = new MimeMessage(session);
      try {

         // 발신자 설정
         InternetAddress from = new InternetAddress(fromEmail);
         msg.setFrom(from);

         // 수신자 설정
         msg.addRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));

         // 메일 제목
         msg.setSubject("[The Shoes] 비밀번호 변경 인증 메일입니다.", "UTF-8");
         
         // 메일 내용
         msg.setText(name + "님! 인증 번호는 " + AuthenticationKey + " 입니다", "UTF-8");

         Transport.send(msg);
         System.out.println("id : " + name + ", email : " + toEmail);
         System.out.println("ssl 버전 성공! 메일함 확인해보세요!");

      } catch (Exception e) {
         e.printStackTrace();
      }
   }
}