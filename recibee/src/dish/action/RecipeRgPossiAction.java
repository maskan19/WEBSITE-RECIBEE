package dish.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dish.service.DishServiceImpl;
import dish.service.IDishService;
import member.service.IMemberService;
import member.service.MemberServiceImpl;
import vo.MemberVO;
import vo.MethodsVO;
import web.IAction;

public class RecipeRgPossiAction implements IAction {

	@Override
	public boolean isRedirect() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO)session.getAttribute("Member");
		String mem_id ="";
		if(member!=null) {
			mem_id = member.getMem_id();
		}
		IMemberService memservice = MemberServiceImpl.getInstance();
		int count = memservice.getMemberCount(mem_id);
		IDishService service = DishServiceImpl.getInstance();
		List<MethodsVO> methodlist = service.GetMethods();
		
		request.setAttribute("count", count);
		request.setAttribute("methodlist", methodlist);
		return "/RecipeRegisterForm.jsp";
	}

}
