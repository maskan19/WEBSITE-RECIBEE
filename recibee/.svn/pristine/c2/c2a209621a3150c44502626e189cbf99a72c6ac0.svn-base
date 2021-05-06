package member.action;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import member.service.IMemberService;
import member.service.MemberServiceImpl;
import vo.MemberVO;
import web.IAction;

public class FindEmailResultAction implements IAction {

	@Override
	public boolean isRedirect() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String mem_name = request.getParameter("mem_name");
		String mem_tel = request.getParameter("mem_tel");
		
		MemberVO vo = new MemberVO();
		vo.setMem_name(mem_name);
		vo.setMem_tel(mem_tel);
		
		IMemberService service = MemberServiceImpl.getInstance();
		String email = service.findemail(vo);
		
		request.setAttribute("email", email);
		return "/FindEmailResult.jsp";
	}

}
