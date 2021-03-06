package member.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import member.service.IMemberService;
import member.service.MemberServiceImpl;
import vo.CartVO;
import vo.DishVO;
import vo.MemberVO;
import web.IAction;

public class GetSessionAction implements IAction {

	@Override
	public boolean isRedirect() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
//		response.setContentType("text/html; charset=utf-8");
		
		Map<String, String> paramap = new HashMap<String, String>();
		paramap.put("mem_id", request.getParameter("mem_id"));
		paramap.put("mem_pass", request.getParameter("mem_pass"));
		
		MemberVO member = null;
		List<DishVO> dish = null;
		int cart = 0;
		
		IMemberService service = MemberServiceImpl.getInstance();
		member = service.loginMember(paramap);
		dish = service.getLikelist(request.getParameter("mem_id"));
		cart = service.getCartlist(request.getParameter("mem_id"));
//		System.out.println(cart.size());
		if (member != null) {
			HttpSession session = request.getSession();
			session.setAttribute("Member", member);
			session.setAttribute("LikeDish", dish);
			session.setAttribute("Cart", cart);
			return "/jsp/Index.do";
		}
		
		return "/jsp/Login.do?msg=0";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	

}
