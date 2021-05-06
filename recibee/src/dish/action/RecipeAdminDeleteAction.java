package dish.action;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.google.gson.Gson;
import dish.service.DishServiceImpl;
import dish.service.IDishService;
import web.IAction;

public class RecipeAdminDeleteAction implements IAction {

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
		
		int dish_code = Integer.parseInt(request.getParameter("dish_code"));
		cnt = service.DeleteAdminRecipe(dish_code);
		
		Gson gson = new Gson();
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json; charset=utf-8");
		String result = "";
		if(cnt>0) {
			result = gson.toJson("삭제 성공");
		}else {
			result = gson.toJson("삭제 실패");
		}
		PrintWriter out = response.getWriter();
		out.write(result);
		out.flush();
		out.close();
		
		return null;
	}

}
