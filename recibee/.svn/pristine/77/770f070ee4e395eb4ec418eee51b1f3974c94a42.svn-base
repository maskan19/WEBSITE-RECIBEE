 package dish.action;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dish.service.DishServiceImpl;
import dish.service.IDishService;
import member.service.IMemberService;
import member.service.MemberServiceImpl;
import vo.DishVO;
import vo.IngredientVO;
import vo.MemberVO;
import vo.RecipeVO;
import web.IAction;

public class RecipeUpdateAction implements IAction {

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
		int mem_grade = 0;
		if(member!=null) {
			mem_id = member.getMem_id();
			mem_grade = member.getMem_grade();
		}
		
		IDishService service = DishServiceImpl.getInstance();
		int dish_code = Integer.parseInt(request.getParameter("num"));
		
		DishVO vo = service.DishListBySelect(dish_code);
		List<IngredientVO>Ingredientlist = service.IngredientBySelect(dish_code);
		List<RecipeVO> ManualList = service.ManualBySelect(dish_code);
		System.out.println(vo.getMem_id());
		System.out.println(mem_id);
		int count = 0;
		if(mem_id.equals(vo.getMem_id())) {
			count = 1;
		}
		if(mem_grade == 999) {
			count = 1;
		}
		System.out.println(count);
		request.setAttribute("DishVo", vo);
		request.setAttribute("Ingredientlist", Ingredientlist);
		request.setAttribute("ManualList", ManualList);
		request.setAttribute("DishId", dish_code);
		request.setAttribute("count", count);
		return "/RecipeUpdate.jsp";
	}

}
