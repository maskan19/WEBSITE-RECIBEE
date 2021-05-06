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

public class RecipeDeleteAction implements IAction {

	@Override
	public boolean isRedirect() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		IDishService service = DishServiceImpl.getInstance();
		int cnt = 0;
		 HttpSession session = request.getSession();
		 MemberVO member = (MemberVO)session.getAttribute("Member");
		 String mem_id ="";
		 if(member!=null){
		 	mem_id = member.getMem_id();
		 }
		Map<String, Object> map = new HashMap<String, Object>();
		int dish_code = Integer.parseInt(request.getParameter("dish_code"));
		map.put("dish_code", dish_code);
		map.put("mem_id", mem_id);
		cnt = service.DeleteRecipe(map);
		
		Gson gson = new Gson();
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json; charset=utf-8");
		String result = "";
		if(cnt>0) {
			result = gson.toJson("삭제 성공");
		}else {
			result = gson.toJson("회원이 작성한 글이 아닙니다.");
		}
		PrintWriter out = response.getWriter();
		out.write(result);
		out.flush();
		out.close();
		
		return null;
	}

}
