package dishreply.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import dish.service.DishServiceImpl;
import dish.service.IDishService;
import dishreply.service.DishreplyServiceImpl;
import dishreply.service.IDishreplyService;
import vo.DishreplyVO;
import vo.MemberVO;
import web.IAction;

public class InsertReplyAction implements IAction {

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
		String mem_id = member.getMem_id();
		IDishreplyService service = DishreplyServiceImpl.getInstance();
		DishreplyVO vo = new DishreplyVO();
		vo.setMem_id(mem_id);
		vo.setDrpl_cont(request.getParameter("drpl_cont").replace("\r", "").replace("\n", "<br>"));
		int DishId = Integer.parseInt(request.getParameter("dish_code"));
		vo.setDish_code(DishId);
		int replycode = service.insertdishreply(vo);
		Gson gson = new Gson();
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json; charset=utf-8");
		String result = "";
		if(replycode > 0) {
			result = gson.toJson("추가 성공");
		}else {
			result = gson.toJson("추가 실패");
		}
		IDishService dishservice = DishServiceImpl.getInstance();
		dishservice.UpdateDishHitDown(DishId);
		PrintWriter out = response.getWriter();
		out.write(result);
		out.flush();
		out.close();
		
		return null;
	}

}
