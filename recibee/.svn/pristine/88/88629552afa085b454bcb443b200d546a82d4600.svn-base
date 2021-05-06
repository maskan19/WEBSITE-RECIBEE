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

public class DeleteReplyAction implements IAction {

	@Override
	public boolean isRedirect() {
		return true;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO)session.getAttribute("Member");
		String mem_id = member.getMem_id();
		int DishId = Integer.parseInt(request.getParameter("dish_code"));
		IDishreplyService service = DishreplyServiceImpl.getInstance();
		DishreplyVO vo = new DishreplyVO();
		vo.setMem_id(mem_id);
		int Replycode = Integer.parseInt(request.getParameter("reply_code"));
		vo.setDrpl_code(Replycode);
		int cnt = service.DeleteReply(vo);
		Gson gson = new Gson();
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json; charset=utf-8");
		String result = "";
		if(cnt > 0) {
			result = gson.toJson("삭제 성공");
		}else {
			result = gson.toJson("삭제 실패");
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
