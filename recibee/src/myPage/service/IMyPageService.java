package myPage.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import dishreply.dao.DishreplyDaoImpl;
import vo.CartVO;
import vo.DishVO;
import vo.DishreplyVO;
import vo.MemberVO;
import vo.PostVO;
import vo.PostrplVO;

public interface IMyPageService {
	
	// 내 회원 정보 가져오는 메서드
	public MemberVO getMyInfo(MemberVO vo);

	// 회원 정보 수정하는 메서드
	public int updateMyInfo(MemberVO vo);
	
	// 회원 탈퇴
	public int deleteMember(String memId);
	
	// 내 게시글 가져오는 메서드
	public List<HashMap<String, Object>> getMyPost(Map<String, Object> map);
	
	// 내 게시글 수 가져오는 메서드
	public int getCountMyPost(String memId);
	
	// 게시글에 해당하는 댓글 수를 가져오는 메서드
	public int getCountReply(int post_code);
	
//	// 내가 작성한 댓글 가져오는 메서드
//	public List<PostrplVO> getMyReply(String memId);
	
	// 내 게시글 중 선택한 글 삭제하는 메서드
	public int deleteMyPost(int post_code);
	
	// 내가 작성한 레시피 가져오는 메서드
	public List<DishVO> getMyRecipe(Map<String, Object> map);
	
	// 내가 작성한 레시피 갯수 가져오는 메서드
	public int getCountMyRecipe(String mem_id);
	
	// 내가 작성한 댓글 가져오는 메서드
	public List<PostrplVO> getMyReply(Map<String, Object> map);
	
	// 내가 작성한 댓글 수 가져오는 메서드
	public int getCountMyReply(String mem_id);
	
	// 내 레시피 삭제하는 메서드
	public int deleteMyRecipe(int dish_code);
	
	// 신고된 레시피 가져오는 메서드
	public List<DishVO> getRPTRecipe(Map<String, Object> map);
	
	// 신고된 레시피 수 가져오는 메서드
	public int getCountRPTRecipe();
	
	// 신고된 게시글 가져오는 메서드
	public List<PostVO> getRPTPost(Map<String, Object> map);
	
	// 신고된 게시글 수 가져오는 메서드
	public int getCountRPTPost();
	
	// 내가 찜한 리스트 가져오는 메서드
	public List<DishVO> getMyLikeList(Map<String, Object> map);
	
	// 내가 찜한 리스트 수 가져오는 메서드
	public int getCountMyLikeList(String mem_id);
	
	// 내가 찜한 리스트 삭제하는 메서드
	public int deleteMyLikeList(Map<String, Object> map);
	
//	// 신고된 댓글 리스트 가져오는 메서드
//	public List<PostrplVO> getRPTReply(Map<String, Object> map);
	
	// 내가 주문한 내역 리스트 가져오는 메서드
	public List<HashMap<String, Object>> getMyCart(Map<String, Object> map);
	
	// 내가 주문한 내역의 결제코드를 페이징하여 가져오는 메서드
	public List<Integer> getPayCode(Map<String, Object> map);
	
	// 내가 주문한 내역 리스트 수 가져오는 메서드
	public int getCountMyCart(String mem_id);
	
	// 내가 쓴 레시피 댓글 가져오는 메서드
	public List<DishreplyVO> getMyRecipeReply(Map<String, Object> map);
	
	// 내가 쓴 레시피 댓글 수 가져오는 메서드
	public int getCountMyRecipeReply(String mem_id);
	// 상품 카트 리스트
	public List<HashMap<String, Object>> listCart(CartVO vo);
}
