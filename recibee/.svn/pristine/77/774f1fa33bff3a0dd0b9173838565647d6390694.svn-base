package board.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import util.SqlMapUtil;
import vo.MemberVO;
import vo.PostAttVO;
import vo.PostVO;
import vo.PostrplVO;

public class BoardDaoImpl implements IBoardDao {

	private SqlMapClient smc;
	private static BoardDaoImpl singleDao;

	private BoardDaoImpl() {
		smc = SqlMapUtil.getSqlMapClient();
	}

	public static BoardDaoImpl getInstance() {
		if (singleDao == null)
			singleDao = new BoardDaoImpl();
		return singleDao;
	}

	@Override
	public List<PostVO> getAllPost() throws SQLException {
		List<PostVO> post = (List<PostVO>) smc.queryForList("board.getAllPost");
		return post;
	}

	@Override
	public List<PostVO> getBoardPost(int board_code) throws SQLException {
		List<PostVO> post = (List<PostVO>) smc.queryForList("board.getBoardPost", board_code);
		return post;
	}

	@Override
	public List<PostAttVO> getPostAtt(int post_code) throws SQLException {
		List<PostAttVO> att = (List<PostAttVO>) smc.queryForList("board.getPostAtt", post_code);
		return att;
	}

	@Override
	public List<PostrplVO> getPostRpl(int post_code) throws SQLException {
		List<PostrplVO> rpl = (List<PostrplVO>) smc.queryForList("board.getPostRpl", post_code);
		return rpl;
	}

	@Override
	public PostVO getExactPost(int post_code) throws SQLException {
		PostVO post = (PostVO) smc.queryForObject("board.getExactPost", post_code);
		return post;
	}

	@Override
	public MemberVO getAli(String mem_id) throws SQLException {
		MemberVO ali = (MemberVO) smc.queryForObject("board.getAli", mem_id);
		return ali;
	}

	@Override
	public int deleteExactPost(int post_code) throws SQLException {
		int cnt = smc.delete("board.deletePost", post_code);
		return cnt;
	}

	@Override
	public int updateExactPost(PostVO post) throws SQLException {
		int cnt = smc.update("board.updatePost", post);
		return cnt;
	}

	
}
