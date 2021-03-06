package common.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import vo.DishVO;
import vo.PostAttVO;
import vo.PostVO;
import vo.PostrplVO;
import vo.ProdAttVO;
import vo.ProdVO;
/**
 * 
 * @author F1
 *
 */
public interface ICommonDao {


	/**
	 * DB의 전체 요리 정보를 가져와서 List에 담아 반환하는 메서드
	 * @return DishVO객체를 담고 있는 List 객체
	 */
	public List<DishVO> getRecentDish() throws SQLException;
	
	/**
	 * DB의 전체 상품 정보를 가져와서 List에 담아 반환하는 메서드
	 * @return ProdVO객체를 담고 있는 List 객체
	 */
	public List<ProdVO> getDiscountProd() throws SQLException;
	
	/**
	 * DB의 전체 게시글 정보를 가져와서 List에 담아 반환하는 메서드
	 * @return PostVO객체를 담고 있는 List 객체
	 */
//	public List<PostVO> getRecentPost() throws SQLException;
	

	/**
	 * 상품 정보를 가져오는 메서드
	 * @param 조회할 글 번호
	 * @return ProdVO객체를 담고 있는 List 객체
	 */
	public ProdVO getRecentProd(int rownum) throws SQLException;
	
	/**
	 * 게시글 정보를 가져오는 메서드
	 * @param 조회할 글 번호
	 * @return PostVO객체를 담고 있는 List 객체
	 */
	public PostVO getRecentPost(int rownum) throws SQLException;

	/**
	 * DB의 전체 게시글 첨부파일 정보를 가져와서 List에 담아 반환하는 메서드
	 * @param 조회할 글 번호
	 * @return PostVO객체를 담고 있는 List 객체
	 */
	public List<PostAttVO> getPostAtt(int rownum) throws SQLException;
	
	/**
	 * DB의 전체 게시글 댓글 정보를 가져와서 List에 담아 반환하는 메서드
	 * @param 조회할 글 번호
	 * @return PostrplVO객체를 담고 있는 List 객체
	 */
	public List<PostrplVO> getPostRpl(int rownum) throws SQLException;
	
	/**
	 * DB의 전체 상품 사진 정보를 가져와서 List에 담아 반환하는 메서드
	 * @param 조회할 상품 번호
	 * @return ProdAttVO객체를 담고 있는 List 객체
	 */
	public List<ProdAttVO> getProdAtt(int rownum) throws SQLException;
	
	/**
	 * DB의 전체 게시글 댓글 정보를 가져와서 List에 담아 반환하는 메서드
	 * @param 조회할 글 번호
	 * @return PostrplVO객체를 담고 있는 List 객체
	 */
	public List<PostVO> searchPost4(String keyword) throws SQLException;
	
	/**
	 * DB의 전체 게시글 댓글 정보를 가져와서 List에 담아 반환하는 메서드
	 * @param 조회할 글 번호
	 * @return PostrplVO객체를 담고 있는 List 객체
	 */
	public List<PostVO> searchPost5(String keyword) throws SQLException;
	
	/**
	 * DB의 전체 게시글 댓글 정보를 가져와서 List에 담아 반환하는 메서드
	 * @param 조회할 글 번호
	 * @return PostrplVO객체를 담고 있는 List 객체
	 */
	public List<DishVO> searchDish(String keyword) throws SQLException;

	/**
	 * DB의 전체 게시글 댓글 정보를 가져와서 List에 담아 반환하는 메서드
	 * @param 조회할 글 번호
	 * @return PostrplVO객체를 담고 있는 List 객체
	 */
	public List<ProdVO> searchProd(String keyword) throws SQLException;
	
	/**
	 * DB의 전체 게시글 댓글 정보를 가져와서 List에 담아 반환하는 메서드
	 * @param 조회할 글 번호
	 * @return PostrplVO객체를 담고 있는 List 객체
	 */
	public List<ProdAttVO> searchProdAtt(int post_code) throws SQLException;
	
}
