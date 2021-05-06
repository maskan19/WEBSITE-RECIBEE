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

public class ProdListAction implements IAction {

	@Override
	public boolean isRedirect() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		String sort = request.getParameter("sort");

		IProdService service = ProdServiceImpl.getInstance();
		List<Map<String, Object>> prodList = null;
		if (sort == null) {
			sort = "낮은순";
		}
		if (sort.equals("낮은순")) {
			prodList = service.listProd();
		} else {
			sort = "높은순";
			prodList = service.listProdDesc();
		}
		int lprod = 0;
		if (request.getParameter("lprod") != null) {
			lprod = Integer.parseInt(request.getParameter("lprod"));
			System.out.println(lprod);
			if (lprod > 0) {
				prodList = service.LprodListProd(lprod);
			}
		}

		List<LprodVO> list = service.listLprod();
		List<Map<String, Object>> allList = service.listProd();
		request.setAttribute("list", list);
		request.setAttribute("prodList", prodList);
		request.setAttribute("lp", lprod);
		request.setAttribute("sort", sort);
		request.setAttribute("allList", allList);
		return "/shop-grid.jsp";
	}

}
