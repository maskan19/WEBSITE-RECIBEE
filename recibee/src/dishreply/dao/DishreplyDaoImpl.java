package dishreply.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import util.SqlMapUtil;
import vo.DishreplyVO;

public class DishreplyDaoImpl implements IDishreplyDao {
	private SqlMapClient smc;
	private static DishreplyDaoImpl dao;
	
	private DishreplyDaoImpl() {
		smc = SqlMapUtil.getSqlMapClient();
	}
	
	public static DishreplyDaoImpl getInstance() {
		if(dao==null) dao= new DishreplyDaoImpl();
		return dao;
	}

	@Override
	public int insertdishreply(DishreplyVO vo) throws SQLException {
		return (int) smc.insert("dishreply.insertDishreply", vo);
	}

	@Override
	public List<DishreplyVO> SelectReplyByDishCode(int DishId) throws SQLException {
		return smc.queryForList("dishreply.SelectReplyByDishCode", DishId);
	}

	@Override
	public int DeleteReply(DishreplyVO vo) throws SQLException {
		return smc.delete("dishreply.DeleteReply", vo);
	}

	@Override
	public int ReplyCount(int DishId) throws SQLException {
		return (int) smc.queryForObject("dishreply.ReplyCount", DishId);
	}
}