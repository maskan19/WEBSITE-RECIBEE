package myPage.action;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import myPage.service.IMyPageService;
import myPage.service.MyPageServiceImpl;
import vo.DishreplyVO;
import vo.MemberVO;
import vo.PostrplVO;
import web.IAction;

public class MyReplyAction implements IAction {

	@Override
	public boolean isRedirect() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		MemberVO member = (MemberVO)request.getSession().getAttribute("Member");
		String mem_id = member.getMem_id();
		
		IMyPageService service = MyPageServiceImpl.getInstance();
		
		String spage = request.getParameter("cpage");
		
		int cpage = 1;
		
		if(spage != null) {
			cpage = Integer.parseInt(spage);
		}
		
		int totalCount1 = service.getCountMyReply(mem_id);
		int totalCount2 = service.getCountMyRecipeReply(mem_id);
		int totalCount = totalCount1 + totalCount2;
		
		int perList = 10;
		int perPage = 3;
		
		int totalPage = (int)(Math.ceil(totalCount/(double)perList));
		
		int start = (cpage-1) * perList + 1;
		int end = start + perList - 1;
		if(end > totalCount) end = totalCount;
		
		int startPage = ((cpage-1) / perPage * perPage) +1;
		int endPage = startPage + perPage -1;
		if(endPage > totalPage) endPage = totalPage;
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("mem_id", mem_id);
		map.put("start", start);
		map.put("end", end);
		
		List<PostrplVO> list = service.getMyReply(map);
		List<DishreplyVO> list2 = service.getMyRecipeReply(map);
		
		request.setAttribute("list", list);
		request.setAttribute("list2", list2);
		request.setAttribute("totalCount", totalCount);
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("cpage", cpage);
		
		return "/myReply.jsp";
	}

}
