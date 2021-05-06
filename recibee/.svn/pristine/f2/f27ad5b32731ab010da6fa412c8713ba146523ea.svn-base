package admin.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.service.AdminProductServiceImpl;
import admin.service.IAdminProductService;
import myPage.service.IMyPageService;
import myPage.service.MyPageServiceImpl;
import vo.MemberVO;
import web.IAction;

public class GetMemberInfoAction implements IAction {

	@Override
	public boolean isRedirect() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String mem_id = request.getParameter("mem_id");
		
		IAdminProductService service = AdminProductServiceImpl.getInstance();
		MemberVO vo = service.getMemberInfo(mem_id);
		int cnt = service.getCountMemberPay(mem_id);
		request.setAttribute("member", vo);
		request.setAttribute("payCount", cnt);
		
		return "/memberInfo.jsp";
	}

}
