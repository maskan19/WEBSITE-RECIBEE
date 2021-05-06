package myPage.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myPage.service.IMyPageService;
import myPage.service.MyPageServiceImpl;
import vo.MemberVO;
import web.IAction;

public class DeleteMyPostAction implements IAction {

	@Override
	public boolean isRedirect() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		int post_code = Integer.parseInt(request.getParameter("post_code"));
		
		IMyPageService service = MyPageServiceImpl.getInstance();
		
		int cnt = service.deleteMyPost(post_code);
		if(cnt>0) {
			System.out.println("삭제 성공");
		}else {
			System.out.println("삭제 실패");
		}
		
//		MemberVO member = (MemberVO) request.getSession().getAttribute("Member");
//		
//		if(member.getMem_grade() == 999) {
//			return "/jsp/RPTPost.do?num=2";
//		}
		
		return "/jsp/MyPost.do";
	}

}
