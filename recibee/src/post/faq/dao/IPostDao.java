package post.faq.dao;

import java.sql.SQLException;
import java.util.List;

import vo.PostVO;
import vo.MemberVO;

public interface IPostDao {

	// FAQ전체 내용 출력
	public List<PostVO> getListFaqPost() throws SQLException;
	
	// FAQ 업데이트
	public int updatePost(PostVO vo) throws SQLException;
	
	
	// FAQ 삭제
	public int deletePost(int post_code)throws SQLException; 

	
	// FAQ 등록
	public void insertPost(PostVO vo) throws SQLException;
}
