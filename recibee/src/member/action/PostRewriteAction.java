package member.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.service.BoardServiceImpl;
import board.service.IBoardService;
import vo.MemberVO;
import vo.PostAttVO;
import vo.PostVO;
import web.IAction;

public class PostRewriteAction implements IAction {

	@Override
	public boolean isRedirect() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		int code = Integer.parseInt(request.getParameter("post"));
		IBoardService service = BoardServiceImpl.getInstance();
		PostVO post = service.getExactPost(code);
		List<PostAttVO> post_atts = service.getPostAtt(code);
//		MemberVO mem_ali = service.getAli(post.getMem_id());
		if (post_atts != null && post_atts.size() != 0) {
			post.setPost_atts(post_atts);
		}
//		System.out.println("ICON" + mem_ali.getMem_icon());

		request.setAttribute("post", post);
//		request.setAttribute("ali", mem_ali);
		
		response.setCharacterEncoding("utf-8");
		return "/posting1_rw.jsp";
	}

}
