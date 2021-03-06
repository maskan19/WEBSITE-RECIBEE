package myPage.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import util.SqlMapUtil;
import vo.CartVO;
import vo.DishVO;
import vo.DishreplyVO;
import vo.MemberVO;
import vo.PostVO;
import vo.PostrplVO;

public class MyPageDaoImpl implements IMyPageDao {
	
	private SqlMapClient smc;
	private static MyPageDaoImpl dao;
	
	private MyPageDaoImpl() {
		smc = SqlMapUtil.getSqlMapClient();
	}

	public static MyPageDaoImpl getInstance() {
		if(dao == null) dao = new MyPageDaoImpl();
		return dao;
	}
	
	@Override
	public MemberVO getMyInfo(MemberVO vo) throws SQLException {
		return (MemberVO) smc.queryForObject("mypage.getMyInfo", vo);
	}

	@Override
	public int updateMyInfo(MemberVO vo) throws SQLException {
		return smc.update("mypage.updateMyInfo", vo);
	}

	@Override
	public int deleteMember(String memId) throws SQLException {
		return smc.delete("mypage.deleteMember", memId);
	}


	@Override
	public int getCountReply(int post_code) throws SQLException {
		return (int) smc.queryForObject("mypage.getCountReply", post_code);
	}

	@Override
	public List<HashMap<String, Object>> getMyPost(Map<String, Object> map) throws SQLException {
		return smc.queryForList("mypage.getMyPost", map);
	}
	
	@Override
	public int deleteMyPost(int post_code) throws SQLException {
		return smc.delete("mypage.deleteMyPost", post_code);
	}

	@Override
	public int getCountMyPost(String memId) throws SQLException {
		return (int) smc.queryForObject("mypage.getCountMyPost", memId);
	}

	@Override
	public List<DishVO> getMyRecipe(Map<String, Object> map) throws SQLException {
		return smc.queryForList("mypage.getMyRecipe", map);
	}

	@Override
	public int getCountMyRecipe(String mem_id) throws SQLException {
		return (int) smc.queryForObject("mypage.getCountMyRecipe", mem_id);
	}

	@Override
	public List<PostrplVO> getMyReply(Map<String, Object> map) throws SQLException {
		return smc.queryForList("mypage.getMyReply", map);
	}

	@Override
	public int getCountMyReply(String mem_id) throws SQLException {
		return (int) smc.queryForObject("mypage.getCountMyReply", mem_id);
	}

	@Override
	public int deleteMyRecipe(int dish_code) throws SQLException {
		return smc.delete("mypage.deleteMyRecipe", dish_code);
	}

	@Override
	public List<DishVO> getRPTRecipe(Map<String, Object> map) throws SQLException {
		return smc.queryForList("mypage.getRPTRecipe", map);
	}

	@Override
	public int getCountRPTRecipe() throws SQLException {
		return (int) smc.queryForObject("mypage.getCountRPTRecipe");
	}

	@Override
	public List<PostVO> getRPTPost(Map<String, Object> map) throws SQLException {
		return smc.queryForList("mypage.getRPTPost", map);
	}

	@Override
	public int getCountRPTPost() throws SQLException {
		return (int) smc.queryForObject("mypage.getCountRPTPost");
	}

	@Override
	public List<DishVO> getMyLikeList(Map<String, Object> map) throws SQLException {
		return smc.queryForList("mypage.getMyLikeList", map);
	}

	@Override
	public int getCountMyLikeList(String mem_id) throws SQLException {
		return (int) smc.queryForObject("mypage.getCountMyLikeList", mem_id);
	}

	@Override
	public int deleteMyLikeList(Map<String, Object> map) throws SQLException {
		return smc.delete("mypage.deleteMyLikeList", map);
	}

	@Override
	public List<HashMap<String, Object>> getMyCart(Map<String, Object> map) throws SQLException {
		return smc.queryForList("mypage.getMyCart", map);
	}

	@Override
	public List<Integer> getPayCode(Map<String, Object> map) throws SQLException {
		return (List<Integer>) smc.queryForList("mypage.getPayCode",map);
	}

	@Override
	public int getCountMyCart(String mem_id) throws SQLException {
		return (int) smc.queryForObject("mypage.getCountMyCart", mem_id);
	}

	@Override
	public List<DishreplyVO> getMyRecipeReply(Map<String, Object> map) throws SQLException {
		return smc.queryForList("mypage.getMyRecipeReply", map);
	}

	@Override
	public int getCountMyRecipeReply(String mem_id) throws SQLException {
		return (int) smc.queryForObject("mypage.getCountMyRecipeReply", mem_id);
	}
	@Override
	public List<HashMap<String, Object>> listCart(CartVO vo) throws SQLException {
		return smc.queryForList("cart.listCartDetail", vo);
	}

	
}
