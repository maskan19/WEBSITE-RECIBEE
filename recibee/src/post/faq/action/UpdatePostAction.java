package post.faq.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import post.faq.service.IPostService;
import post.faq.service.PostServiceImpl;
import vo.PostVO;
import web.IAction;

public class UpdatePostAction implements IAction {

	@Override
	public boolean isRedirect() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		
		int post_code = Integer.parseInt(request.getParameter("postcode2"));
		String post_title = request.getParameter("title2");
		String post_cont = request.getParameter("cont2");
		
		System.out.println();
		PostVO vo = new PostVO();
		vo.setPost_code(post_code);
		vo.setPost_title(post_title);
		vo.setPost_cont(post_cont);
		
		response.setCharacterEncoding("utf-8");
		
		IPostService service = PostServiceImpl.getInstance();
		int cnt = service.updatePost(vo);
		
		String result = "성공";
		
		if(cnt < 1) {
			result = "실패";
		}
		Gson gson = new Gson();
		String jsonData = gson.toJson(result);
		
		
		// 변환된 JSON데이터를 응답으로 보내준다.
		response.setCharacterEncoding("utf-8");
//				response.setContentType("text/html; charset=utf-8");
		
		response.setContentType("application/json; charset=utf-8");
		
		PrintWriter out = response.getWriter();
		
		out.write(jsonData);
		out.flush();
		out.close();
		
		return null;
	}

}
