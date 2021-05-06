package post.faq.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import myPage.service.IMyPageService;
import myPage.service.MyPageServiceImpl;
import post.faq.service.IPostService;
import post.faq.service.PostServiceImpl;
import vo.MemberVO;
import vo.PostVO;
import web.IAction;

public class PostFaqInfoAction implements IAction {

	@Override
	public boolean isRedirect() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		  request.setCharacterEncoding("utf-8");
		
		
		  HttpSession session = request.getSession();
		  
		  
		  String id = (String)session.getAttribute("ID");
		  PostVO vo = new PostVO();
		  vo.setMem_id(id);
		  IPostService service = PostServiceImpl.getInstance();
		  
		  List<PostVO> list = service.getListFaqPost();
		  
		  request.setAttribute("FAQ", list);
		 
		

		return "/FAQ.jsp";
		
	
	}

}
