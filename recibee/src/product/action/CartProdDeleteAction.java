package product.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import product.service.IProdService;
import product.service.ProdServiceImpl;
import vo.CartVO;
import vo.MemberVO;
import web.IAction;

public class CartProdDeleteAction implements IAction {

	@Override
	public boolean isRedirect() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		MemberVO memberVo = (MemberVO)session.getAttribute("Member");
		String memId = memberVo.getMem_id();
		int code = Integer.parseInt(request.getParameter("code"));
		CartVO cvo = new CartVO();
		cvo.setMem_id(memId);
		cvo.setProd_code(code);
		
		IProdService service = ProdServiceImpl.getInstance();
		service.deleteCartProd(cvo);
		
		return "/jsp/CartList.do";
	}

}
