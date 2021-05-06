package common.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.service.CommonServiceImpl;
import common.service.ICommonService;
import vo.DishVO;
import vo.PostAttVO;
import vo.PostVO;
import vo.PostrplVO;
import vo.ProdAttVO;
import vo.ProdVO;
import web.IAction;

public class IndexPageAction implements IAction {

	@Override
	public boolean isRedirect() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ICommonService service = CommonServiceImpl.getInstance();
		List<DishVO> dish = service.getRecentDish();
		List<ProdVO> prodlist = new ArrayList<ProdVO>();
		List<PostVO> postlist = new ArrayList<PostVO>();
		
		for (int rownum = 1; rownum <= 3; rownum++) {
			
			PostVO post = service.getRecentPost(rownum);
			
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
		
		
		for(int rownum = 1; rownum<=8; rownum++) {
			ProdVO prod = service.getRecentProd(rownum);
			List<ProdAttVO> prod_atts = service.getProdAtt(rownum);
			
			if (prod_atts != null && prod_atts.size() != 0) {
				prod.setProd_atts(prod_atts);
			}
			if (prod != null) {
				prodlist.add(prod);
			}
		}
		
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		request.setAttribute("Dishlist", dish);
		request.setAttribute("Prodlist", prodlist);
		request.setAttribute("Postlist", postlist);

		return "/index.jsp";
	}

}
