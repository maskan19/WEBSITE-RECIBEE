package member.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import member.service.IMemberService;
import member.service.MemberServiceImpl;
import web.IAction;

public class AliDuplicateChecker implements IAction {

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
		response.setContentType("application/json; charset=utf-8");
		String mem_ali= request.getParameter("mem_ali");
		IMemberService service = MemberServiceImpl.getInstance();
		int cnt = service.getAliasCount(mem_ali);
		
		Gson gson = new Gson();
		String result = null;
		
		if(cnt ==1) {
			result = gson.toJson("1");//중복 ID
		} else {
			result = gson.toJson("0");//사용 가능
		}
		PrintWriter out = response.getWriter();
		out.println(result);
		response.flushBuffer();
		
		return null;
		
	}

}
