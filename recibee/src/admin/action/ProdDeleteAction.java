package admin.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.service.AdminProductServiceImpl;
import admin.service.IAdminProductService;
import web.IAction;

public class ProdDeleteAction implements IAction{

	@Override
	public boolean isRedirect() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int prodCode = Integer.parseInt(request.getParameter("prodCode"));
		
		IAdminProductService service = AdminProductServiceImpl.getInstance();
		service.ProdDelete(prodCode);
		
		
		return "/jsp/ProdList.do";
	}

}
