package product.action;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import product.service.IProdService;
import product.service.ProdServiceImpl;
import vo.CartVO;
import vo.MemberVO;
import web.IAction;

public class ProdCartUpdateAction implements IAction {

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
		MemberVO memberVo = (MemberVO)session.getAttribute("Member");
		String memId = memberVo.getMem_id();
		
		String[] arr = request.getParameterValues("arr")[0].split(",");
		
		
		
		for(String a : arr) { 
			CartVO cvo = new CartVO(); 
			String b[] = a.split("/");
			cvo.setMem_id(memId);
			cvo.setProd_code(Integer.parseInt(b[0]));
			cvo.setCart_count(Integer.parseInt(b[1]));
			IProdService service = ProdServiceImpl.getInstance();
			service.updateCart(cvo);
		}
		 
		return "/jsp/CartList.do";
	}

}
