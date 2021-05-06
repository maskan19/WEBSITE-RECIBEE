package board.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.service.BoardServiceImpl;
import board.service.IBoardService;
import common.service.CommonServiceImpl;
import common.service.ICommonService;
import vo.MemberVO;
import vo.PostAttVO;
import vo.PostVO;
import vo.PostrplVO;
import web.IAction;

public class PostPageAction implements IAction {

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
		List<PostrplVO> post_rpls = service.getPostRpl(code);
		MemberVO mem_ali = service.getAli(post.getMem_id());
		if(post_atts!=null&&post_atts.size()!=0) {
			post.setPost_atts(post_atts);}
		System.out.println("ICON" + mem_ali.getMem_icon());
		if(post_rpls!=null&&post_rpls.size()!=0) {post.setPost_rpls(post_rpls);}
		
		ICommonService comservice = CommonServiceImpl.getInstance();
		List<PostVO> postlist = new ArrayList<PostVO>();
		for (int rownum = 1; rownum <= 3; rownum++) {
			PostVO rcpost = comservice.getRecentPost(rownum);
			List<PostAttVO> atts = comservice.getPostAtt(rownum);
			List<PostrplVO> rpls = comservice.getPostRpl(rownum);
			if (atts != null && atts.size() != 0) {
				rcpost.setPost_atts(atts);
			}
			if (rpls != null && rpls.size() != 0) {
				rcpost.setPost_rpls(rpls);
			}
			if (rcpost != null) {
			postlist.add(rcpost);
			}
		}
		
		request.setAttribute("post", post);
		request.setAttribute("ali", mem_ali);
		request.setAttribute("Postlist", postlist);
		
		response.setCharacterEncoding("utf-8");
		return "/post.jsp";
	}

}
