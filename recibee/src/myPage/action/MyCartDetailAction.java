package myPage.action;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import myPage.service.IMyPageService;
import myPage.service.MyPageServiceImpl;
import product.service.IProdService;
import product.service.ProdServiceImpl;
import vo.CartVO;
import vo.MemberVO;
import web.IAction;

public class MyCartDetailAction implements IAction {

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
		MemberVO memberVo = (MemberVO)session.getAttribute("Member");
		int paycode =  Integer.parseInt(request.getParameter("paycode"));
		String memId = memberVo.getMem_id();
		CartVO vo = new CartVO();
		if(memId!=null) {
			IMyPageService service = MyPageServiceImpl.getInstance();
			vo.setPay_code(paycode);
			vo.setMem_id(memId);
			List<HashMap<String, Object>> list = service.listCart(vo);
			
			request.setAttribute("list", list);
			request.setAttribute("member", memberVo);
		}
		return "/myCartDetail.jsp";
	}

}
