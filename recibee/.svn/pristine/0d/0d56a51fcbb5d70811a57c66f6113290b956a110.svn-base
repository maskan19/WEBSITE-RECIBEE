package board.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import board.service.BoardServiceImpl;
import board.service.IBoardService;
import vo.PostAttVO;
import vo.PostVO;
import vo.PostrplVO;
import web.IAction;

public class Board3PageAction implements IAction {

	@Override
	public boolean isRedirect() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		IBoardService service = BoardServiceImpl.getInstance();
		HttpSession session = request.getSession();
		session.setAttribute("board_code", 3);
		
		List<PostVO> postlist = new ArrayList<PostVO>();
		List<PostVO> postWithout = service.getBoardPost(3);

		for (PostVO post : postWithout) {

			List<PostAttVO> post_atts = service.getPostAtt(post.getPost_code());
			List<PostrplVO> post_rpls = service.getPostRpl(post.getPost_code());
			if (post_atts != null && post_atts.size() != 0) {
				post.setPost_atts(post_atts);
			}
			if (post_rpls != null && post_rpls.size() != 0) {
				post.setPost_rpls(post_rpls);
			}
			if (post != null) {
				postlist.add(post);
			}
		}

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		request.setAttribute("board", postlist);

		return "/board.jsp";
	}

}
