package common.action;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import common.service.CommonServiceImpl;
import common.service.ICommonService;
import product.service.IProdService;
import product.service.ProdServiceImpl;
import vo.DishVO;
import vo.PostAttVO;
import vo.PostVO;
import vo.ProdAttVO;
import vo.ProdVO;
import web.IAction;

public class SearchPageAction implements IAction {

	@Override
	public boolean isRedirect() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String keyword = request.getParameter("keyword");
		String feild = request.getParameter("feild");
		System.out.println(feild);
		ICommonService service = CommonServiceImpl.getInstance();
		HttpSession session = request.getSession();
		request.setAttribute("keyword", keyword);
		
		switch(feild) {
		case "recipe":
			List<DishVO> dishList = (List<DishVO>)service.searchDish(keyword);
			request.setAttribute("feild", "recipe");
			request.setAttribute("dishList", dishList);
			System.out.println("rec");
			break;
		case "prod":
			List<ProdVO> prodList = (List<ProdVO>)service.searchProd(keyword);
			for(ProdVO prod : prodList) {
				List<ProdAttVO> post_atts = (List<ProdAttVO>)service.getProdAtt(prod.getProd_code());
				prod.setProd_atts(post_atts);
			}
			request.setAttribute("feild", "prod");
			request.setAttribute("prodList", prodList);
			System.out.println("prod");
			break;
		case "board4":
			List<PostVO> board4 = service.searchPost4(keyword);
			for(PostVO post : board4) {
				List<PostAttVO> post_atts = (List<PostAttVO>)service.getPostAtt(post.getPost_code());
				post.setPost_atts(post_atts);
			}
			request.setAttribute("feild", "board4");
			request.setAttribute("board4", board4);
			break;
		case "board5":
			List<PostVO> board5 = service.searchPost5(keyword);
			for(PostVO post : board5) {
				List<PostAttVO> post_atts = (List<PostAttVO>)service.getPostAtt(post.getPost_code());
				post.setPost_atts(post_atts);
			}
			request.setAttribute("feild", "board5");
			request.setAttribute("board5", board5);
			break;
			
		default:
			
			dishList = (List<DishVO>)service.searchDish(keyword);
			request.setAttribute("dishList", dishList);
			
			
			prodList = (List<ProdVO>)service.searchProd(keyword);
			System.out.println("all");
			for(ProdVO prod : prodList) {
				List<ProdAttVO> post_atts = (List<ProdAttVO>)service.searchProdAtt(prod.getProd_code());
				System.out.println(prod.getProd_code());
				prod.setProd_atts(post_atts);
			}
			request.setAttribute("prodList", prodList);
			
			board4 = service.searchPost4(keyword);
			for(PostVO post : board4) {
				List<PostAttVO> post_atts = (List<PostAttVO>)service.getPostAtt(post.getPost_code());
				post.setPost_atts(post_atts);
			}
			request.setAttribute("board4", board4);
			
			
			board5 = service.searchPost4(keyword);
			for(PostVO post : board5) {
				List<PostAttVO> post_atts = (List<PostAttVO>)service.getPostAtt(post.getPost_code());
				post.setPost_atts(post_atts);
			}
			request.setAttribute("board5", board5);
			
			
			
			request.setAttribute("feild", "all");
			break;
		}
		
		
		return "/searchresult.jsp";
	}

}
