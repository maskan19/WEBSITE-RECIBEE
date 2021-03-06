package member.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.service.IMemberService;
import member.service.MemberServiceImpl;
import vo.MemberVO;
import web.IAction;

public class MemberInsertAction implements IAction {

	boolean checker = false;
	
	@Override
	public boolean isRedirect() {
		// TODO Auto-generated method stub
		return checker; //아래의 process()메서드의 반환값이 요청 uri일 경우에 true를 반환하여 redirect하도록 한다.
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String mem_id = request.getParameter("mem_id");
		String mem_pass = request.getParameter("mem_pass");
		String mem_name = request.getParameter("mem_name");
		String mem_tel1 = request.getParameter("mem_tel1");
		String mem_tel2 = request.getParameter("mem_tel2");
		String mem_tel3 = request.getParameter("mem_tel3");
		String mem_tel = mem_tel1 + mem_tel2 + mem_tel3;
		String mem_ali = request.getParameter("mem_ali");
		String mem_gen = request.getParameter("mem_gen");
		String mem_bir = request.getParameter("mem_bir");
		/* String mem_icon = request.getParameter("mem_icon"); */
		
		MemberVO memVo = new MemberVO();
		memVo.setMem_id(mem_id);
		memVo.setMem_pass(mem_pass);
		memVo.setMem_name(mem_name);
		memVo.setMem_tel(mem_tel);
		memVo.setMem_ali(mem_ali);
		memVo.setMem_gen(mem_gen);
		memVo.setMem_bir(mem_bir);
		
		response.setCharacterEncoding("utf-8");
		IMemberService service = MemberServiceImpl.getInstance();
		if (service.insertMember(memVo)==1) {
			return "/join_complete.jsp";
			
		}
		return "/join_agreement.jsp";
		
	}

}
