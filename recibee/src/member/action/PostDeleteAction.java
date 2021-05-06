package member.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.service.BoardServiceImpl;
import board.service.IBoardService;
import web.IAction;

public class PostDeleteAction implements IAction {

	@Override
	public boolean isRedirect() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int code = Integer.parseInt(request.getParameter("post"));
		int board_code =  Integer.parseInt(request.getParameter("board"));
		IBoardService service = BoardServiceImpl.getInstance();
		
		int cnt = service.deleteExactPost(code);
		
		if(cnt==1) {
//			삭제성공
		
		
		switch (board_code) {
		case 2:
			return "/jsp/Board2.do";
		case 3:
			return "/jsp/Board3.do";
		case 4:
			return "/jsp/Board4.do";
		case 5:
			return"/jsp/Board5.do";
		default:
			return  "/jsp/Board.do";
		}
		
		}else {
//			삭제실패
			
			return "/jsp/Board.do";
		}
		
	}

}
