package board.dao;

import java.sql.SQLException;
import java.util.List;

import vo.MemberVO;
import vo.PostAttVO;
import vo.PostVO;
import vo.PostrplVO;

/**
 * 
 * @author F1
 *
 */
public interface IBoardDao {

	/**
	 * DB의 전체 게시글 정보를 가져와서 List에 담아 반환하는 메서드
	 * @return PostVO객체를 담고 있는 List 객체
	 */
	public List<PostVO> getAllPost() throws SQLException;
	
	/**
	 * DB의 전체 게시글 정보를 가져와서 List에 담아 반환하는 메서드
	 * @param board분류
	 * @return PostVO객체를 담고 있는 List 객체
	 */
	public List<PostVO> getBoardPost(int board_code) throws SQLException;

	/**
	 * 게시글의 전체 첨부파일 정보를 가져와서 List에 담아 반환하는 메서드
	 * @param post_code
	 * @return PostVO객체를 담고 있는 List 객체
	 */
	public List<PostAttVO> getPostAtt(int post_code)  throws SQLException;
	
	/**
	 * 게시글의 전체 댓글 정보를 가져와서 List에 담아 반환하는 메서드
	 * @param post_code 
	 * @return PostVO객체를 담고 있는 List 객체
	 */
	public List<PostrplVO> getPostRpl(int post_code)  throws SQLException;
	
	/**
	 * 해당 게시글 정보를 가져와서 PostVO에 담아 반환하는 메서드
	 * @param post_code 
	 * @return PostVO객체를 담고 있는 List 객체
	 */
	public PostVO getExactPost(int post_code) throws SQLException;

	/**
	 * id로 작성자의 alias를 찾아 반환하는 메서드
	 * @param mem_id
	 * @return mem_alias
	 */
	public MemberVO getAli(String mem_id) throws SQLException;

	/**
	 * 해당 게시글을 가져와서 삭제하는 메서드
	 * @param post_code 
	 * @return delete 성공: 1, 삭제 실패: 0
	 */
	public int deleteExactPost(int post_code) throws SQLException;

	/**
	 * 해당 게시글을 가져와서 수정하는 메서드
	 * @param post_code 
	 * @return delete 성공: 1, 삭제 실패: 0
	 */
	public int updateExactPost(PostVO post) throws SQLException;
	
}
