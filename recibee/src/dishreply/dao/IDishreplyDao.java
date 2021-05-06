package dishreply.dao;

import java.sql.SQLException;
import java.util.List;
import vo.DishreplyVO;

public interface IDishreplyDao {	
	public int insertdishreply(DishreplyVO vo)throws SQLException;
		
	public List<DishreplyVO> SelectReplyByDishCode(int DishId) throws SQLException;

	public int DeleteReply(DishreplyVO vo) throws SQLException;
	
	public int ReplyCount(int DishId) throws SQLException;
}