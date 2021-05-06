package admin.action;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.service.IAdminProductService;
import product.service.IProdService;
import product.service.ProdServiceImpl;
import admin.service.AdminProductServiceImpl;
import vo.LprodVO;
import vo.ProdVO;
import web.IAction;

public class ProdUpdateFormAction implements IAction {

	@Override
	public boolean isRedirect() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int prodCode = Integer.parseInt(request.getParameter("prodCode"));
		
		IAdminProductService service = AdminProductServiceImpl.getInstance();
		IProdService pservice = ProdServiceImpl.getInstance();
		
		List<LprodVO> list = service.LprodList();
		List<Map<String, Object>> prodList = pservice.detailProd(prodCode);
		
		request.setAttribute("list", list);
		request.setAttribute("prodcode", prodCode);
		request.setAttribute("prodList", prodList);
		
		return "/adminProductUpdate.jsp";
	}

}
