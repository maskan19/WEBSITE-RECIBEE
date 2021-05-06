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
		
		// 댓글 수?
		
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
		
		
		
		
		// 쿼리문 세개 쓰는거
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
		
		
		
		
		
//		// 첨부파일이 포함된 게시글 목록들
//		List<Map<String, Object>> post_list = service.getMyRecipe(mem_id);
		
//		System.out.println("여기는?");
//		
//		System.out.println(post_list.size());
//		
//		System.out.println("요기는?");
//		// 댓글 수를 추가할 게시글 목록들을 넣을 리스트 객체
//		List<Map<String, Object>> list = new ArrayList<Map<String,Object>>();
//		
//		for(Map<String, Object> li : post_list) {
//			System.out.println(post_list.size());
//			System.out.println(li);
//			// 첨부파일 포함된 게시글 목록 맵의 key값을 얻어오기 위함
//			Set<String> keys = li.keySet();
//			
//			// 임의의 맵 객체를 생성하고
//			Map<String, Object> count = new HashMap<String, Object>();
//			for(String key : keys) {
//				
//				// 만약 key값중에 post_code가 있다면
//				if(key.equals("POST_CODE")) {
//					
//					// 댓글 수를 가져오는 쿼리문을 실행한다.
//					int cnt = service.getCountReply((int) li.get(key));
//					// 그 결과값을 맵에 저장하고
//					count.put("REPLY", cnt);
//				}
//				// 나머지 맵들도 저장한담에 list에 저장한다
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
