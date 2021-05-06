package admin.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.service.AdminProductServiceImpl;
import admin.service.IAdminProductService;
import web.IAction;

public class DeleteMemberAction implements IAction {

	@Override
	public boolean isRedirect() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String mem_id = (String) request.getParameter("mem_id");
		
		IAdminProductService service = AdminProductServiceImpl.getInstance();
		int cnt = service.deleteMember(mem_id);
		
		if(cnt > 0) {
			System.out.println("비활성화 성공");
		}else {
			System.out.println("비활성화 실패");
		}
		
		String num = request.getParameter("num");
		
		if(num.equals("0")) {
			return "/jsp/GetAllMember.do";
		}else if(num.equals("1")) { 
			return "/jsp/GetRPTMember.do";
		}else {
			return "/jsp/GetMemberInfo.do";
		}
	}

}
