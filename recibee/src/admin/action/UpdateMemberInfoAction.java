package admin.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import admin.service.AdminProductServiceImpl;
import admin.service.IAdminProductService;
import vo.MemberVO;
import web.IAction;

public class UpdateMemberInfoAction implements IAction {

	@Override
	public boolean isRedirect() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String mem_id = request.getParameter("id");
		String mem_pass = request.getParameter("pass");
		String mem_ali = request.getParameter("name_ali");
		int mem_mile = Integer.parseInt(request.getParameter("mem_mile"));
		
		String mem_tel1 = request.getParameter("mem_tel1");
		String mem_tel2 = request.getParameter("mem_tel2");
		String mem_tel3 = request.getParameter("mem_tel3");
		String mem_tel = mem_tel1 + mem_tel2 + mem_tel3;
		
		MemberVO vo = new MemberVO();
		vo.setMem_id(mem_id);
		vo.setMem_pass(mem_pass);
		vo.setMem_ali(mem_ali);
		vo.setMem_mile(mem_mile);
		vo.setMem_tel(mem_tel);
		
		response.setCharacterEncoding("utf-8");
		
		IAdminProductService service = AdminProductServiceImpl.getInstance();
		int cnt = service.updateMemberInfo(vo);
		
		String result = "";
		
		if(cnt < 1) {
			result = "실패";
		}else {
			result= "성공";
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
