package product.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import product.service.IProdService;
import product.service.ProdServiceImpl;
import vo.ProdVO;

@WebServlet("/ProdSelectLprod.do")
public class ProdSelectLprod extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		int lprod = Integer.parseInt(request.getParameter("lprod"));
		
		IProdService service = ProdServiceImpl.getInstance();
		List<ProdVO> list = service.selectLprod(lprod);
		
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("").forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
