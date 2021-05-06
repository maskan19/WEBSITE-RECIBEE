package dishreply.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import dishreply.dao.DishreplyDaoImpl;
import dishreply.dao.IDishreplyDao;
import vo.DishreplyVO;

public class DishreplyServiceImpl implements IDishreplyService {
	
	private static DishreplyServiceImpl service;
	private IDishreplyDao dao;
	
	private DishreplyServiceImpl() {
		dao = DishreplyDaoImpl.getInstance();
	}
	
	public static DishreplyServiceImpl getInstance() {
		if(service==null) service = new DishreplyServiceImpl();
		return service;
	}

	@Override
	public int insertdishreply(DishreplyVO vo) {
		int count = 0;
		
		try {
			count = dao.insertdishreply(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return count;
	}

	@Override
	public List<DishreplyVO> SelectReplyByDishCode(int DishId) {
		List<DishreplyVO> list = null;
		
		try {
			list = dao.SelectReplyByDishCode(DishId);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public int DeleteReply(DishreplyVO vo) {
		int cnt = 0;
		
		try {
			cnt = dao.DeleteReply(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return cnt;
	}

	@Override
	public int ReplyCount(int DishId) {
		int count = 0;
		
		try {
			count = dao.ReplyCount(DishId);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return count;
	}
}