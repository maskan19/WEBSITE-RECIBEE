package product.action;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import product.service.IProdService;
import product.service.ProdServiceImpl;
import vo.CartVO;
import vo.MemberVO;
import web.IAction;

public class ProdCartListAction implements IAction{

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
		String memId = memberVo.getMem_id();
		if(memId!=null) {
			IProdService service = ProdServiceImpl.getInstance();
			List<CartVO> list = service.listCart(memId);
			
			request.setAttribute("list", list);
			request.setAttribute("member", memberVo);
		}
		
		
		return "/cart.jsp";
	}

}
