package myPage.action;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myPage.service.IMyPageService;
import myPage.service.MyPageServiceImpl;
import vo.DishVO;
import vo.PostVO;
import vo.PostrplVO;
import web.IAction;

public class RPTPostAction implements IAction {

	@Override
	public boolean isRedirect() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int num = Integer.parseInt(request.getParameter("num"));
		
		IMyPageService service = MyPageServiceImpl.getInstance();
		
		String spage = request.getParameter("cpage");
		
		int cpage = 1;
		
		if(spage != null) {
			cpage = Integer.parseInt(spage);
		}
		
		int totalCount = 0;
		
		if(num == 0) {
			totalCount = service.getCountRPTRecipe();
		}else {
			totalCount = service.getCountRPTPost();
		}
		
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
		map.put("start", start);
		map.put("end", end);
		
		List<DishVO> list1 = null;
		List<PostVO> list2 = null;
		if(num == 0) {
			list1 = service.getRPTRecipe(map);
			request.setAttribute("list1", list1);
		}else {
			list2 = service.getRPTPost(map);
			request.setAttribute("list2", list2);
		}
		
		request.setAttribute("totalCount", totalCount);
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("cpage", cpage);
		
		return "/RPTPage.jsp";
	}

}
