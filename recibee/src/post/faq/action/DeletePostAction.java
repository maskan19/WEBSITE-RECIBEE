package post.faq.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import post.faq.service.IPostService;
import post.faq.service.PostServiceImpl;
import web.IAction;

public class DeletePostAction implements IAction {

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
		
		IPostService service = PostServiceImpl.getInstance();
		int cnt = service.deletePost(post_code);
		if(cnt>0) {
			System.out.println("삭제 성공");
		}else {
			System.out.println("삭제 실패");
		}
		
		return "/jsp/PostFAQ.do";
	}

}
