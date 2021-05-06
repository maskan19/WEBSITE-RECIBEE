package common.action;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import member.service.IMemberService;
import member.service.MemberServiceImpl;
import web.IAction;

public class JoinPageAction implements IAction {

	@Override
	public boolean isRedirect() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String term1 = request.getParameter("term1");
		String term2 = request.getParameter("term2");
		String term3 = request.getParameter("term3");
		
		HashMap<String, String> terms = new HashMap<>();
		terms.put("term1", term1);
		terms.put("term2", term2);
		terms.put("term3", term3);
		
		System.out.println("term1" + terms.get("term1"));
		System.out.println(term2);
		System.out.println("termsize err" + terms.size());
		
		response.setCharacterEncoding("utf-8");
		if (terms.get("term1")==null||terms.get("term2")==null) {
			return "/wrongaccess.jsp";
		}else if (terms.get("term1").equals("on") && terms.get("term2").equals("on")) {
			System.out.println("동의");
			return "/join_form.jsp";
		}else {
			return "/wrongaccess.jsp";
		}
		
	}

}
