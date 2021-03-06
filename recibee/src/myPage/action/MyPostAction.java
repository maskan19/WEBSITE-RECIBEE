package myPage.action;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import myPage.service.IMyPageService;
import myPage.service.MyPageServiceImpl;
import vo.MemberVO;
import web.IAction;

public class MyPostAction implements IAction {

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
		
		MemberVO member = (MemberVO)session.getAttribute("Member");
		String mem_id = member.getMem_id();
		IMyPageService service = MyPageServiceImpl.getInstance();
		
		String spage = request.getParameter("cpage");
		
		int cpage = 1;
		
		if(spage != null) {
			cpage = Integer.parseInt(spage);
		}
		
		int totalCount = service.getCountMyPost(mem_id);
		
		int perList = 6;
		int perPage = 3;
		
		int totalPage = (int)(Math.ceil(totalCount/(double)perList));
		
		int start = (cpage-1) * perList + 1;
		int end = start + perList - 1;
		if(end > totalCount) end = totalCount;
		
		int startPage = ((cpage-1) / perPage * perPage) +1;
		int endPage = startPage + perPage -1;
		if(endPage > totalPage) endPage = totalPage;
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("mem_id", mem_id);
		map.put("start", start);
		map.put("end", end);
		
		List<HashMap<String, Object>> list = service.getMyPost(map);
		
		HashMap<Integer, Object> cntrp = new HashMap<Integer, Object>();
		
		// λκΈ μ?
		
		for(HashMap<String, Object> li : list) {
			String code = String.valueOf(li.get("POST_CODE"));
			
			int post_code = Integer.parseInt(code);
			
			int cnt = service.getCountReply(post_code);
			cntrp.put(post_code, cnt);
		}
		
		request.setAttribute("list", list);
		request.setAttribute("totalCount", totalCount);
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("cpage", cpage);
		request.setAttribute("cntrp", cntrp);
		
		
		
		
		// μΏΌλ¦¬λ¬Έ μΈκ° μ°λκ±°
//		List<PostVO> list = service.getMyPost(mem_id);
//		
//		List<Map<String, Object>> ect = new ArrayList<Map<String,Object>>();
//		
//		for(PostVO vo: list) {
//			Map<String, Object> map = new HashMap<String, Object>();
//			int post_code = vo.getPost_code();
//			String att = service.getPostAtt(post_code);
//			int cnt = service.getCountReply(post_code);
//			
//			map.put("POST_CODE", post_code);
//			map.put("POST_FILE", att);
//			map.put("REPLY", cnt);
//			
//			ect.add(map);
//			
//		}
//		
//		request.setAttribute("myPost", list);
//		request.setAttribute("ect", ect);
		
		
		
		
		
//		// μ²¨λΆνμΌμ΄ ν¬ν¨λ κ²μκΈ λͺ©λ‘λ€
//		List<Map<String, Object>> post_list = service.getMyRecipe(mem_id);
		
//		System.out.println("μ¬κΈ°λ?");
//		
//		System.out.println(post_list.size());
//		
//		System.out.println("μκΈ°λ?");
//		// λκΈ μλ₯Ό μΆκ°ν  κ²μκΈ λͺ©λ‘λ€μ λ£μ λ¦¬μ€νΈ κ°μ²΄
//		List<Map<String, Object>> list = new ArrayList<Map<String,Object>>();
//		
//		for(Map<String, Object> li : post_list) {
//			System.out.println(post_list.size());
//			System.out.println(li);
//			// μ²¨λΆνμΌ ν¬ν¨λ κ²μκΈ λͺ©λ‘ λ§΅μ keyκ°μ μ»μ΄μ€κΈ° μν¨
//			Set<String> keys = li.keySet();
//			
//			// μμμ λ§΅ κ°μ²΄λ₯Ό μμ±νκ³ 
//			Map<String, Object> count = new HashMap<String, Object>();
//			for(String key : keys) {
//				
//				// λ§μ½ keyκ°μ€μ post_codeκ° μλ€λ©΄
//				if(key.equals("POST_CODE")) {
//					
//					// λκΈ μλ₯Ό κ°μ Έμ€λ μΏΌλ¦¬λ¬Έμ μ€ννλ€.
//					int cnt = service.getCountReply((int) li.get(key));
//					// κ·Έ κ²°κ³Όκ°μ λ§΅μ μ μ₯νκ³ 
//					count.put("REPLY", cnt);
//				}
//				// λλ¨Έμ§ λ§΅λ€λ μ μ₯νλ΄μ listμ μ μ₯νλ€
//				count.put(key, li.get(key));
//			}
//			list.add(count);
//			
//		}
//		
//		
//		request.setAttribute("myRecipe", list);
		
		
		return "/myPost.jsp";
	}

}
