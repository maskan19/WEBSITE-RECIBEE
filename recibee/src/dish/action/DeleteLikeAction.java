package dish.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.google.gson.Gson;
import dish.service.DishServiceImpl;
import dish.service.IDishService;
import vo.MemberVO;
import web.IAction;

public class DeleteLikeAction implements IAction {

	@Override
	public boolean isRedirect() {
		return true;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		IDishService service = DishServiceImpl.getInstance();
		
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO)session.getAttribute("Member");
		String mem_id = member.getMem_id();
		int dishcode = Integer.parseInt(request.getParameter("dish_code"));
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("mem_id", mem_id);
		map.put("dish_code", dishcode);
		int cnt = service.DeleteLike(map);
		service.UpdateDishHitDown(dishcode);
		Gson gson = new Gson();
		String result = "";
		if(cnt>0) {
			result = gson.toJson("찜 삭제 실패");
		}else {
			result = gson.toJson("찜 삭제 성공");
		}
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json; charset=utf-8"); 
		PrintWriter out = response.getWriter();
		out.write(result);
		response.flushBuffer();
		return null;
	}

}
