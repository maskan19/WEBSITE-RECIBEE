package myPage.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vo.MemberVO;
import web.IAction;

public class MyPageAction implements IAction {

	@Override
	public boolean isRedirect() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO)session.getAttribute("Member");
		int mem_grade = member.getMem_grade();
		
		if(mem_grade == 999) {
			return "/adminPage.jsp";
		}
		
		
		return "/myPage.jsp";
	}

}
