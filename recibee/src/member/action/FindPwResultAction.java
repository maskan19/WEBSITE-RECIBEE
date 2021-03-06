package member.action;

import java.io.IOException;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import member.service.IMemberService;
import member.service.MemberServiceImpl;
import vo.MemberVO;
import web.IAction;

public class FindPwResultAction implements IAction {

	@Override
	public boolean isRedirect() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String mem_id=request.getParameter("mem_id");
		String result = "";
		String mem_pass = "";
		
		IMemberService service = MemberServiceImpl.getInstance();
		int count = service.findpw(mem_id);
		
		if(count==0) {
			result = "해당 이메일로 검색된 회원의 정보가 존재하지 않습니다.";
		}else {
			service = MemberServiceImpl.getInstance();
			for(int i=0; i<=1; i++) {
				String pw1 = Character.toString((char) ((Math.random() * 26) + 65));
				String pw2 = Integer.toString((int) Math.floor(Math.random()*99));
				String pw3 = Character.toString((char) ((Math.random() * 26) + 97));
				mem_pass += pw1+pw2+pw3;
			}
			result = "이메일로 임시 비밀번호가 전송되었습니다.";
			MemberVO vo = new MemberVO();
			vo.setMem_id(mem_id);
			vo.setMem_pass(mem_pass);
			int cnt = service.updatepw(vo);
			EmailFormat(mem_id, mem_pass);
		}
		
		request.setAttribute("result", result);
		
		return "/FindPwResult.jsp"; 
	}
	
	public static void EmailFormat(String mem_id, String password2){
		// 네이버일 경우 네이버 계정, gmail경우 gmail 계정
		final String user = "recibee6@gmail.com";

		// 패스워드
		final String password = "java1234*";

		// SMTP 서버 정보를 설정한다. (SMTP - simple mail transfer protocol : 간이 우편 전송 프로토콜)
		/*
		 * Properties는 속성 SMTP 프로토콜 공급자로 JavaMail 세션 개체에서 설정할 수있습니다. 
		 * 속성은 항상 문자열로 설정됨. Map처럼 Key - Value 형식으로 삽입 가능, 주로 어플리케이션의 환경 설정과 관련된 속성을 저장. 
		 */
		Properties prop = new Properties();
		prop.setProperty("mail.smtp.starttls.enable", "true");
	    prop.setProperty("mail.smtp.port", "465");
	    prop.setProperty("mail.smtp.user", "user");
	    prop.setProperty("mail.smtp.auth", "true");
	    prop.setProperty("mail.smtp.ssl.enable", "false");
	    prop.setProperty("mail.session.mail.smtp.auth.mechanisms", "LOGIN");
	    prop.setProperty("mail.session.mail.smtp.auth.plain.disable", "false");
	    prop.setProperty("mail.session.mail.smtp.starttls.enable", "false");
		prop.put("mail.smtp.host", "smtp.gmail.com"); // 내가 사용할 이메일
		prop.put("mail.smtp.port", 465); // 포트 설정
		prop.put("mail.smtp.auth", "true"); // 인증 설정
		prop.put("mail.smtp.ssl.enable", "true");
		prop.put("mail.smtp.ssl.trust", "smtp.gmail.com");

		// 설정한 SMTP 정보를 넘겨줌
		// Session 클래스의 getDefaultInstance() 메소드는 파라미터로 전달받은 Properties에 저장되어 있는
		// 속성값을 사용하여 세션을 생성

		// PasswordAuthentication <= 사용자 명과 패스워드를 위한 리포지터리(repository) / 저장소
		// 매개변수로 사용할 이메일의 아이디와 비밀번호를 입력한다.

		// 세션(session)이란 웹 사이트의 여러 페이지에 걸쳐 사용되는 사용자 정보를 저장하는 방법을 의미합니다.
		// Authenticator는 네트워크 연결을 위해 인증을 얻기 위한 수단으로 사용하는 객체
		Session session = Session.getDefaultInstance(prop,
				new javax.mail.Authenticator() {
					protected PasswordAuthentication getPasswordAuthentication() {
						return new PasswordAuthentication(user, password);
					}
				});

		try {
			// 메시지 입력을 위한 인스턴스 생성
			MimeMessage message = new MimeMessage(session);

			// ARPA : 방위고등연구계획국 - 약칭으로 아파넷
			// RFC822: Standard for ARPA Internet Text Messages
			// InternetAddress는 syntax RFC822를 사용하는 인터넷이메일 주소를 나타냄
			message.setFrom(new InternetAddress(user));

			// 수신자메일주소
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(
					mem_id));

			// Subject - 제목을 입력
			message.setSubject(mem_id+"님의 재설정된 비밀번호입니다.");

			// Text - 메일 내용 입력
			message.setText(password2+"로 비밀번호가 재설정되었습니다.");

			// send the message - 메일 전송
			Transport.send(message);

			// 성공 여부 출력
			System.out.println("message sent successfully...");
		} catch (AddressException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
