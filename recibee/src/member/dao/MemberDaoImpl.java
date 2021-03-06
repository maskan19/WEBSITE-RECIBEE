package member.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import com.ibatis.sqlmap.client.SqlMapClient;
import util.SqlMapUtil;
import vo.CartVO;
import vo.DishVO;
import vo.MemberVO;
import vo.PostAttVO;
import vo.PostVO;

public class MemberDaoImpl implements IMemberDao {

	private SqlMapClient smc;
	private static MemberDaoImpl singleDao;

	private MemberDaoImpl() {
		smc = SqlMapUtil.getSqlMapClient();
	}

	public static MemberDaoImpl getInstance() {
		if (singleDao == null)
			singleDao = new MemberDaoImpl();
		return singleDao;
	}

	@Override
	public int insertPost(PostVO postVo) throws SQLException {
		int cnt = (Integer) smc.insert("post.insertPost", postVo);
		return cnt;
	}

	@Override
	public int insertPostAtt(PostAttVO attVo) throws SQLException{
		int cnt = 0;
		Object obj = smc.insert("post.insertPostAtt", attVo);
		if (obj == null)
			cnt = 1;
		return cnt;
	}

	@Override
	public int insertMember(MemberVO memVo) throws SQLException {
		int cnt = 0;
		Object obj = smc.insert("member.insertMember", memVo);
		if (obj == null)
			cnt = 1;
		return cnt;
	}

	@Override
	public int deleteMember(String memId) throws SQLException {
		int cnt = smc.delete("member.deleteMember", memId);
		return cnt;
	}

	@Override
	public List<MemberVO> getAllMember() {
		return null;
	}

	@Override
	public int getMemberCount(String memId) throws SQLException {
		int cnt = (int) smc.queryForObject("member.selectMember", memId);
		return cnt;
	}

	@Override
	public int getAliasCount(String Alias) throws SQLException {
		int cnt = (int) smc.queryForObject("member.selectAlias", Alias);
		return cnt;
	}

	@Override
	public MemberVO loginMember(Map<String, String> paramMap) throws SQLException {
		MemberVO member = (MemberVO) smc.queryForObject("member.getMemberInfo", paramMap);
		return member;
	}

	@Override
	public List<DishVO> getLikelist(String memId) throws SQLException {
		List<DishVO> dish = (List<DishVO>) smc.queryForList("member.getLikelist", memId);
		return dish;
	}

	@Override
	public int getCartlist(String memId) throws SQLException {
		int cart = (int) smc.queryForObject("member.getCartlist", memId);
		return cart;
	}
	
	

	@Override
	public int updateMember(Map<String, String> paramMap) {
		return 0;
	}

	@Override
	public MemberVO getMember(String memId) {
		return null;
	}

	@Override
	public String findemail(MemberVO vo) throws SQLException {
		return (String) smc.queryForObject("member.findemail", vo);
	}

	@Override
	public int findpw(String memId) throws SQLException {
		return (int) smc.queryForObject("member.findpw", memId);
	}

	@Override
	public int updatepw(MemberVO vo) throws SQLException {
		return smc.update("member.updatepw", vo);
	}
}
