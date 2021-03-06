package myPage.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import myPage.service.IMyPageService;
import myPage.service.MyPageServiceImpl;
import vo.MemberVO;
import web.IAction;

public class MyInfoAction implements IAction {

	@Override
	public boolean isRedirect() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		  request.setCharacterEncoding("utf-8");
		
		
		  HttpSession session = request.getSession();
		  
		  MemberVO vo = (MemberVO)session.getAttribute("Member");
		  IMyPageService service = MyPageServiceImpl.getInstance();
		  
		  MemberVO memVo = service.getMyInfo(vo);
		  
		  request.setAttribute("myInfo", memVo);
		 
		

		return "/myInfo.jsp";
		
		/*
		 세션 생겼을 때 - 쿼리문에 아이디도 같이 넣어야됨
		 
		  
		 request.setCharacterEncoding("utf-8");
		
		
		  String pass = request.getParameter("pass");
		  HttpSession session = request.getSession();
		  
		  // 나중에 수정해야할 곳
		  session.setAttribute("PASS", 123);
		  
		  response.setCharacterEncoding("utf-8");
		  response.setContentType("text/html; charset=utf-8");
		  
		  IMyPageService service = MyPageServiceImpl.getInstance();
		  
		  if(pass != null) {
			  if(session.getAttribute("PASS").equals(pass)) {
		          MemberVO vo = service.getMyInfo(pass);
				  request.setAttribute("myInfo", vo);
				  
				  return "/myInfo.jsp";
			  }
		  }
		  
		 return "/jsp/MyPage.do";
		 */
	}

}
