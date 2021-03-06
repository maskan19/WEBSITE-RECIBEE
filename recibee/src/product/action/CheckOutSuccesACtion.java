package product.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import product.service.IProdService;
import product.service.ProdServiceImpl;
import vo.AddrVO;
import vo.CartVO;
import vo.MemberVO;
import vo.PayVO;
import web.IAction;

public class CheckOutSuccesACtion implements IAction {

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
		MemberVO memberVo = (MemberVO)session.getAttribute("Member");
		String memId = memberVo.getMem_id();
		
		
		
		AddrVO addrVo = new AddrVO();
		addrVo.setAddr_zip(request.getParameter("zonecode"));
		addrVo.setAddr_doro(request.getParameter("roadAddress"));
		addrVo.setAddr_acc(request.getParameter("accAddress"));
		addrVo.setMem_id(memId);
		addrVo.setAddr_rec(request.getParameter("memname"));
		String acc = request.getParameter("accAddress");
		String memo = request.getParameter("memo");
		memo.replace("\r", "").replace("\n", "<br>");
		addrVo.setAddr_memo(memo);
		int mile = Integer.parseInt(request.getParameter("mile"));
		
		
		MemberVO mem = new MemberVO();
		mem.setMem_id(memId);
		mem.setMem_mile(mile);
		
		PayVO payVo = new PayVO();
		payVo.setAmount(Integer.parseInt(request.getParameter("total")));
		payVo.setPg(request.getParameter("pg"));
		payVo.setPay_method(request.getParameter("pgMathod"));
		
		
		
		IProdService service = ProdServiceImpl.getInstance();
		service.memMileUpdate(mem);
		int addCode = service.insertAddr(addrVo);
		int payCode = service.insertPay(payVo);
		CartVO cvo = new CartVO();
		cvo.setAddr_code(addCode);
		cvo.setMem_id(memId);
		cvo.setPay_code(payCode);
		service.succesCart(cvo);
		
		
		return "/checkoutSucces.jsp";
	}

}
