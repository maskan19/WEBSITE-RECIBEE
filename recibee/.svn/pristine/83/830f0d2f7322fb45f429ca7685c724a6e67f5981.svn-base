package product.action;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import product.service.IProdService;
import product.service.ProdServiceImpl;
import vo.ProdVO;
import web.IAction;

public class ProdDetailAction implements IAction{

	@Override
	public boolean isRedirect() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		int code = Integer.parseInt(request.getParameter("code"));
		int lprodcode = Integer.parseInt(request.getParameter("lprod"));
		IProdService service = ProdServiceImpl.getInstance();
		
		List<Map<String, Object>> list = service.detailProd(code);
		List<ProdVO> accList = service.accDetailProd(lprodcode);
		
		BigDecimal c = ((BigDecimal) list.get(0).get("PROD_CODE"));
		String cstring = "prod"+c;
		Cookie cookie = new Cookie(cstring, String.valueOf(c));
		response.addCookie(cookie);
		
		
		request.setAttribute("prod", list);
		request.setAttribute("accList", accList);
		
		return "/shop-details.jsp";
	}

}
