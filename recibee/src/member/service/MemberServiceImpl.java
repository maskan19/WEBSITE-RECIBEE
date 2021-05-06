package member.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import member.dao.IMemberDao;
import member.dao.MemberDaoImpl;
import vo.CartVO;
import vo.DishVO;
import vo.MemberVO;
import vo.PostAttVO;
import vo.PostVO;

public class MemberServiceImpl implements IMemberService {

	private IMemberDao memDao;

	private static MemberServiceImpl memService;

	private MemberServiceImpl() {
		memDao = MemberDaoImpl.getInstance();
	}

	public static MemberServiceImpl getInstance() {
		if (memService == null)
			memService = new MemberServiceImpl();
		return memService;
	}

	@Override
	public int insertPost(PostVO postVo) {
		int cnt = 0;
		try {
			cnt= memDao.insertPost(postVo);
			} catch (SQLException e) {
				 e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public int insertPostAtt(PostAttVO attVo) {
		int cnt = 0;
		try {
			cnt= memDao.insertPostAtt(attVo);
			} catch (SQLException e) {
				 e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public int insertMember(MemberVO memVo) {
		int cnt = 0;
		try {
			cnt= memDao.insertMember(memVo);
			} catch (SQLException e) {
				 e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public int deleteMember(String memId) {
		int cnt = 0;
		try {
			cnt= memDao.deleteMember(memId);
			} catch (SQLException e) {
				 e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public List<MemberVO> getAllMember() {
		return null;
	}

	@Override
	public int getMemberCount(String memId) {
		int cnt = 0;
		try {
			cnt= memDao.getMemberCount(memId);
			} catch (SQLException e) {
				 e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public int getAliasCount(String Alias) {
		int cnt = 0;
		try {
			cnt= memDao.getAliasCount(Alias);
			} catch (SQLException e) {
				 e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public MemberVO loginMember(Map<String, String> paramMap) {
		MemberVO member = null;
		try {
			member=memDao.loginMember(paramMap);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return member;
	}

	@Override
	public List<DishVO> getLikelist(String memId) {
		List<DishVO> dish = null;
		try {
			dish = memDao.getLikelist(memId);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dish;
	}

	@Override
	public int getCartlist(String memId) {
		int cart = 0;
		try {
			cart = memDao.getCartlist(memId);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cart;
	}

	@Override
	public int updateMember(Map<String, String> paramMap) {
		int cnt = 0;
		/*
		 * try { cnt= memDao.updateMember(paramMap); } catch (SQLException e) {
		 * e.printStackTrace(); }
		 */
		return cnt;
	}

	@Override
	public MemberVO getMember(String memId) {
		return null;
	}

	@Override
	public String findemail(MemberVO vo){
		String email = null;
		
		try {
			email = memDao.findemail(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return email;
	}

	@Override
	public int findpw(String memId) {
		int count = 0;
		
		try {
			count = memDao.findpw(memId);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return count;
	}

	@Override
	public int updatepw(MemberVO vo) {
		int cnt = 0;
		
		try {
			cnt = memDao.updatepw(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return cnt;
	}
}
