package myPage.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myPage.service.IMyPageService;
import myPage.service.MyPageServiceImpl;
import web.IAction;

public class DeleteRecipeAction implements IAction {

	@Override
	public boolean isRedirect() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		int dish_code = Integer.parseInt(request.getParameter("dish_code"));
		
		IMyPageService service = MyPageServiceImpl.getInstance();
		
		int cnt = service.deleteMyRecipe(dish_code);
		
		if(cnt > 0) {
			System.out.println("성공");
		}else {
			System.out.println("실패");
		}
		
		return "/jsp/RPTPost.do?num=0";
	}

}
