package myPage.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import myPage.dao.IMyPageDao;
import myPage.dao.MyPageDaoImpl;
import vo.CartVO;
import vo.DishVO;
import vo.DishreplyVO;
import vo.MemberVO;
import vo.PostVO;
import vo.PostrplVO;

public class MyPageServiceImpl implements IMyPageService {
	
	private static MyPageServiceImpl service;
	
	private IMyPageDao dao;
	
	private MyPageServiceImpl() {
		dao = MyPageDaoImpl.getInstance();
	}
	
	public static MyPageServiceImpl getInstance() {
		if(service ==null) service = new MyPageServiceImpl();
		return service;
	}

	@Override
	public int updateMyInfo(MemberVO vo) {
		int cnt = 0;
		
		try {
			cnt = dao.updateMyInfo(vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public MemberVO getMyInfo(MemberVO vo) {
		MemberVO memVo = new MemberVO();
		
		try {
			memVo = dao.getMyInfo(vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return memVo;
	}

	@Override
	public int deleteMember(String memId) {
		int cnt = 0;
		
		try {
			cnt = dao.deleteMember(memId);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return cnt;
	}

	@Override
	public int getCountReply(int post_code) {
		int cnt = 0;
		
		try {
			cnt = dao.getCountReply(post_code);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return cnt;
	}

	@Override
	public List<HashMap<String, Object>> getMyPost(Map<String, Object> map) {
		List<HashMap<String, Object>> list = null;
		
		try {
			list = dao.getMyPost(map);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
	

	@Override
	public int deleteMyPost(int post_code) {
		
		int cnt = 0;
		
		try {
			cnt = dao.deleteMyPost(post_code);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return cnt;
	}

	@Override
	public int getCountMyPost(String memId) {
		int cnt = 0;
		
		try {
			cnt = dao.getCountMyPost(memId);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public List<DishVO> getMyRecipe(Map<String, Object> map) {
		List<DishVO> list = null;
		
		try {
			list = dao.getMyRecipe(map);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public int getCountMyRecipe(String mem_id) {
		int cnt = 0;
		
		try {
			cnt = dao.getCountMyRecipe(mem_id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public List<PostrplVO> getMyReply(Map<String, Object> map) {
		List<PostrplVO> list = null;
		
		try {
			list = dao.getMyReply(map);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public int getCountMyReply(String mem_id) {
		int cnt = 0;
		
		try {
			cnt = dao.getCountMyReply(mem_id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public int deleteMyRecipe(int dish_code) {
		int cnt = 0;
		
		try {
			cnt = dao.deleteMyRecipe(dish_code);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return cnt;
	}

	@Override
	public List<DishVO> getRPTRecipe(Map<String, Object> map) {
		List<DishVO> list = null;
		
		try {
			list = dao.getRPTRecipe(map);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public int getCountRPTRecipe() {
		int cnt = 0;
		
		try {
			cnt = dao.getCountRPTRecipe();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return cnt;
	}

	@Override
	public List<PostVO> getRPTPost(Map<String, Object> map) {
		List<PostVO> list = null;
		
		try {
			list = dao.getRPTPost(map);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public int getCountRPTPost() {
		int cnt = 0;
		
		try {
			cnt = dao.getCountRPTPost();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public List<DishVO> getMyLikeList(Map<String, Object> map) {
		List<DishVO> list = null;
		try {
			list = dao.getMyLikeList(map);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public int getCountMyLikeList(String mem_id) {
		int cnt = 0;
		try {
			cnt = dao.getCountMyLikeList(mem_id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public int deleteMyLikeList(Map<String, Object> map) {
		int cnt = 0;
		try {
			cnt = dao.deleteMyLikeList(map);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public List<HashMap<String, Object>> getMyCart(Map<String, Object> map) {
		List<HashMap<String, Object>> list = null;
		try {
			list = dao.getMyCart(map);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<Integer> getPayCode(Map<String, Object> map) {
		List<Integer> list = null;
		try {
			list = dao.getPayCode(map);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public int getCountMyCart(String mem_id) {
		int cnt = 0;
		try {
			cnt = dao.getCountMyCart(mem_id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public List<DishreplyVO> getMyRecipeReply(Map<String, Object> map) {
		List<DishreplyVO> list = null;
		try {
			list = dao.getMyRecipeReply(map);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public int getCountMyRecipeReply(String mem_id) {
		int cnt = 0;
		
		try {
			cnt = dao.getCountMyRecipeReply(mem_id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cnt;
	}
	@Override
	public List<HashMap<String, Object>> listCart(CartVO vo) {
		List<HashMap<String, Object>> list = null;
		try {
			list = dao.listCart(vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	

}
