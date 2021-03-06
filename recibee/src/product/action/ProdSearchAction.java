package product.action;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import product.service.IProdService;
import product.service.ProdServiceImpl;
import vo.LprodVO;
import vo.ProdVO;
import web.IAction;

public class ProdSearchAction implements IAction {

	@Override
	public boolean isRedirect() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		String search = request.getParameter("search");
		
		IProdService service = ProdServiceImpl.getInstance();
		List<LprodVO> list = service.listLprod();
		
		List<ProdVO> prodList = service.searchListProd(search);
		List<Map<String, Object>> allList = service.listProd();
		
		request.setAttribute("list", list);
		request.setAttribute("prodList", prodList);
		request.setAttribute("allList", allList);
		
		return "/shop-grid.jsp";
	}

}
