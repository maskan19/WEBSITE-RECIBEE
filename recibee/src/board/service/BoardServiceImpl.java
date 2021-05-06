package board.service;

import java.sql.SQLException;
import java.util.List;

import board.dao.BoardDaoImpl;
import board.dao.IBoardDao;
import vo.MemberVO;
import vo.PostAttVO;
import vo.PostVO;
import vo.PostrplVO;

public class BoardServiceImpl implements IBoardService {
	private IBoardDao boardDao;

	private static BoardServiceImpl boardService;

	private BoardServiceImpl() {
		boardDao = BoardDaoImpl.getInstance();
	}

	public static BoardServiceImpl getInstance() {
		if (boardService == null)
			boardService = new BoardServiceImpl();
		return boardService;
	}

	@Override
	public List<PostVO> getAllPost() {
		List<PostVO> post = null;
		try {
			post = boardDao.getAllPost();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return post;
	}

	@Override
	public List<PostVO> getBoardPost(int board_code) {
		List<PostVO> post = null;
		try {
			post = boardDao.getBoardPost(board_code);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return post;
	}

	@Override
	public List<PostAttVO> getPostAtt(int post_code) {
		List<PostAttVO> att = null;
		try {
			att = boardDao.getPostAtt(post_code);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return att;
	}

	@Override
	public List<PostrplVO> getPostRpl(int post_code) {
		List<PostrplVO> rpl = null;
		try {
			rpl = boardDao.getPostRpl(post_code);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rpl;
	}

	@Override
	public PostVO getExactPost(int post_code) {
		PostVO post = null;
		try {
			post = boardDao.getExactPost(post_code);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return post;
	}

	@Override
	public MemberVO getAli(String mem_id) {
		MemberVO ali = null;
		try {
			ali = boardDao.getAli(mem_id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ali;
	}

	@Override
	public int deleteExactPost(int post_code) {
		int cnt = 0;
		try {
			cnt= boardDao.deleteExactPost(post_code);
			} catch (SQLException e) {
				 e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public int updateExactPost(PostVO post) {
		int cnt = 0;
		try {
			cnt= boardDao.updateExactPost(post);
			} catch (SQLException e) {
				 e.printStackTrace();
		}
		return cnt;
	}
	
	

}
