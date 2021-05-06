package dish.action;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dish.service.DishServiceImpl;
import dish.service.IDishService;
import dishreply.service.DishreplyServiceImpl;
import dishreply.service.IDishreplyService;
import vo.DishVO;
import vo.DishreplyVO;
import vo.IngredientVO;
import vo.MemberVO;
import vo.RecipeVO;
import web.IAction;

public class RecipeDetailAction implements IAction {

	@Override
	public boolean isRedirect() {
		return false;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("utf-8");
		IDishService service = DishServiceImpl.getInstance();
		int dish_code = Integer.parseInt(request.getParameter("num"));
		
		/*
		 * String dstring = "reci"+dish_code; Cookie dishcookie = new Cookie(dstring,
		 * String.valueOf(dish_code)); response.addCookie(dishcookie);
		 */
		
		DishVO vo = service.DishListBySelect(dish_code);
		List<IngredientVO>Ingredientlist = service.IngredientBySelect(dish_code);
		List<RecipeVO> ManualList = service.ManualBySelect(dish_code);
		service.UpdateDishHit(dish_code);
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO)session.getAttribute("Member");
		String mem_id ="";
		int mem_grade = 0;
		if(member!=null) {
			mem_id = member.getMem_id();
			mem_grade = member.getMem_grade();
		}
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("mem_id", mem_id);
		map.put("dish_code", dish_code);
		int count = service.SelectLike(map);
		String memId = vo.getMem_id();
		String MemAli = service.SelectMemAli(memId);
		IDishreplyService replyservice = DishreplyServiceImpl.getInstance();
		List<DishreplyVO> replylist = replyservice.SelectReplyByDishCode(dish_code);
		int ReplyCount = replyservice.ReplyCount(dish_code);
		
		request.setAttribute("DishVo", vo);
		request.setAttribute("Ingredientlist", Ingredientlist);
		request.setAttribute("ManualList", ManualList);
		request.setAttribute("DishId", dish_code);
		request.setAttribute("count", count);
		request.setAttribute("MemAli", MemAli);
		request.setAttribute("mem_grade", mem_grade);
		request.setAttribute("replylist", replylist);
		request.setAttribute("ReplyCount", ReplyCount);
		return "/Recipedetails.jsp";
	}

}
