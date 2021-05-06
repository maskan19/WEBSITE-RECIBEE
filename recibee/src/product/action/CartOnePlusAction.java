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

public class CartOnePlusAction implements IAction {

	@Override
	public boolean isRedirect() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO)session.getAttribute("Member");
		if(vo!=null) {
			String memId = vo.getMem_id();
			int prodCode = Integer.parseInt(request.getParameter("prodCode"));
			CartVO cvo = new CartVO();
			cvo.setMem_id(memId);
			cvo.setProd_code(prodCode);
			cvo.setCart_count(1);
			
			IProdService service = ProdServiceImpl.getInstance();
			int cnt = service.selectCartProd(cvo);
			if(cnt == 0) {
				service.insertCart(cvo);
			}else {
				service.plusCartProd(cvo);
			}
		}
		
		return "/jsp/ProdList.do";
	}

}
