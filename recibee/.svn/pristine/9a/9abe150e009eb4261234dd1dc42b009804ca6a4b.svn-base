package myPage.action;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import myPage.service.IMyPageService;
import myPage.service.MyPageServiceImpl;
import vo.MemberVO;
import web.IAction;

public class DeleteMyLikeListAction implements IAction {

	@Override
	public boolean isRedirect() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		MemberVO member = (MemberVO) request.getSession().getAttribute("Member");
		
		String mem_id = member.getMem_id();
		String dish_code = request.getParameter("dish_code");
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("mem_id", mem_id);
		map.put("dish_code", dish_code);
		
		IMyPageService service = MyPageServiceImpl.getInstance();
		
		int cnt = service.deleteMyLikeList(map);
		if(cnt > 0) {
			System.out.println("찜 리스트 삭제 성공");
		}else {
			System.out.println("찜 리스트 삭제 실패");
		}
		
		return "/jsp/MyLikeList.do";
		
	}

}
