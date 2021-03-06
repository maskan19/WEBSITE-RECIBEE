package admin.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.service.IAdminProductService;
import admin.service.AdminProductServiceImpl;
import vo.LprodVO;
import web.IAction;

public class ProdInsertFormAction implements IAction {

	@Override
	public boolean isRedirect() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		IAdminProductService service = AdminProductServiceImpl.getInstance();
		List<LprodVO> list = service.LprodList();
		
		request.setAttribute("list", list);
		return "/adminProductInsert.jsp";
	}

}
