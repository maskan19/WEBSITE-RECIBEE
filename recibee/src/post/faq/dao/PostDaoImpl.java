package post.faq.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import util.SqlMapUtil;
import vo.PostVO;
import vo.MemberVO;

public class PostDaoImpl implements IPostDao {
	
	private SqlMapClient smc;
	private static PostDaoImpl dao;
	
	private PostDaoImpl() {
		smc = SqlMapUtil.getSqlMapClient();
	}

	public static PostDaoImpl getInstance() {
		if(dao == null) dao = new PostDaoImpl();
		return dao;
	}
	
//	@Override
//	public MemberVO getMyInfo(MemberVO vo) throws SQLException {
//		return (MemberVO) smc.queryForObject("mypage.getMyInfo", vo);
//	}
//
//	@Override
//	public int updateMyInfo(MemberVO vo) throws SQLException {
//		return smc.update("mypage.updateMyInfo", vo);
//	}

	@Override
	public List<PostVO> getListFaqPost() throws SQLException {
		
		return smc.queryForList("post.getListFaqPost");
	}

	@Override
	public int updatePost(PostVO vo) throws SQLException {
		return smc.update("post.updatePost", vo);
	}

	@Override
	public int deletePost(int post_code) throws SQLException {
		return smc.delete("post.deletePost",post_code);
			
	}

	@Override
	public void insertPost(PostVO vo) throws SQLException {
		smc.insert("post.insertPost",vo);
	}

	
	

}











