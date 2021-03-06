package post.faq.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import post.faq.service.IPostService;
import post.faq.service.PostServiceImpl;
import vo.MemberVO;
import vo.PostVO;
import web.IAction;

public class InsertPostAction implements IAction {

	@Override
	public boolean isRedirect() {
		return true;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
//		int post_code  = Integer.parseInt(request.getParameter("post_code"));
		String post_title = request.getParameter("mtitle");
		String post_cont  = request.getParameter("mcontent");
		
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO) session.getAttribute("Member");
		
		String id = member.getMem_id();
		
		PostVO postVo = new PostVO();
//		postVo.setPost_code(post_code);
		postVo.setMem_id(id);
		postVo.setPost_title(post_title);
		postVo.setPost_cont(post_cont);
		postVo.setBoard_code(1);
		IPostService service = PostServiceImpl.getInstance();
		service.insertPost(postVo);
		
//		if(cnt > 0) {
//			System.out.println("등록 성공");
//			return "/jsp/PostFAQ.do";}
//		System.out.println("등록 실패");
		return "/jsp/PostFAQ.do";
	}

}
