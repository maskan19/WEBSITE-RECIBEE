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

public class DeleteMemberAction implements IAction {

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
		String mem_id = member.getMem_id(); 
		
		IMyPageService service = MyPageServiceImpl.getInstance();
		int cnt = service.deleteMember(mem_id);
		
		request.setAttribute("deleteMember", cnt);
		
		session.invalidate();
		
		return "/index.jsp";
	}

}
