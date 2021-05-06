package addr.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import addr.service.AddrServiceImpl;
import addr.service.IAddrService;
import vo.AddrVO;
import vo.MemberVO;
import web.IAction;

public class AddrDeleteAction implements IAction {

	@Override
	public boolean isRedirect() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String doro = request.getParameter("doro");
		
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO)session.getAttribute("Member");
		
		String memId = vo.getMem_id();
		
		AddrVO addrVo = new AddrVO();
		addrVo.setMem_id(memId);
		addrVo.setAddr_doro(doro);
		IAddrService service = AddrServiceImpl.getInstance();
		
		service.deleteAddr(addrVo);
		
		return "/jsp/CheckOut.do";
	}

}
