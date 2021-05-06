package dish.action;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.startup.SetAllPropertiesRule;

import dish.service.DishServiceImpl;
import dish.service.IDishService;
import vo.DishVO;
import web.IAction;

public class RecipeSearchWordAction implements IAction {

	@Override
	public boolean isRedirect() {
		return false;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		IDishService service = DishServiceImpl.getInstance();
		
		String spage =   request.getParameter("cpage");
		
		int cpage = 1;
		
		if(spage != null) {
			 cpage = Integer.parseInt(spage);
		}

		String word = request.getParameter("word");
		String mth_name = request.getParameter("mth_name");
		if(word==null) {
			word = "";
		}
		if(mth_name==null) {
			mth_name = "";
		}
		Map<String, String> countmap = new HashMap<String, String>();
		countmap.put("word", word);
		countmap.put("mth_name", mth_name);
		int totalCount = service.Count(countmap);
		
		int perList = 21;
		int perPage = 7;

		int totalPage = (int) (Math.ceil(totalCount / (double)perList));
		
		int start = (cpage-1) * perList +1;
		int end = start + perList - 1;
		if(end > totalCount) end = totalCount;
		
		int startPage = ((cpage-1) / perPage * perPage) +1;
		int endPage = startPage + perPage -1;
		if(endPage > totalPage) endPage = totalPage;
		
		Map<String, String> map = new HashMap<>();
		map.put("start", Integer.toString(start));
		map.put("end", Integer.toString(end));
		map.put("word", word);
		map.put("mth_name", mth_name);
		
		List<DishVO> list = service.SelectByPage(map);
		
		request.setAttribute("list", list);
		request.setAttribute("totalCount", totalCount);
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("cpage", cpage);
		request.setAttribute("word", word);
		request.setAttribute("mth_name", mth_name);
		return "/RecipeMain.jsp";
	}
}