package admin.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import vo.LprodVO;
import vo.MemberVO;
import vo.ProdAttVO;
import vo.ProdVO;

public interface IAdminProductDao {
	/**
	 * 상품분류 불러와서 select에 넣어주기
	 * @return list
	 * @throws SQLException
	 */
	public List<LprodVO> LprodList() throws SQLException;
	
	/**
	 * 상품등록
	 * @return
	 * @throws SQLException
	 */
	public int ProdInsert(ProdVO vo) throws SQLException;
	/**
	 * 상품사진 등록
	 * @param vo
	 * @throws SQLException
	 */
	public void ProdAttInsert(ProdAttVO vo) throws SQLException;
	
	/**
	 * 상품삭제
	 * @throws SQLException
	 */
	public void ProdDelete(int prodCode) throws SQLException;
	/**
	 * 상품업데이트
	 * @param vo
	 * @throws SQLException
	 */
	public void UpdateProd(ProdVO vo) throws SQLException;
	/**
	 * 상품사진 삭제
	 * @param code
	 * @throws SQLException
	 */
	public void DeleteProdAtt(int code) throws SQLException;
	/**
	 * 모든 회원 가져오는 메서드
	 * @return
	 */
	public List<MemberVO> getAllmember(Map<String, Object> map) throws SQLException;
	
	/**
	 * 모든 회원 수 가져오는 메서드
	 * @return
	 */
	public int getCountAllMember() throws SQLException;
	
	/**
	 * 회원 탈퇴 시키는 메서드(update)
	 * @return
	 */
	public int deleteMember(String mem_id) throws SQLException;
	
	/**
	 * 회원 활성화 시키는 메서드(update)
	 * @param mem_id
	 * @return
	 */
	public int activeMember(String mem_id) throws SQLException;
	
	/**
	 * 신고 회원 가져오는 메서드
	 * @param map
	 * @return
	 */
	public List<MemberVO> getRPTMember(Map<String, Object> map) throws SQLException;
	
	/**
	 * 신고 회원 수 가져오는 메서드
	 * @param map
	 * @return
	 */
	public int getCountRPTMember() throws SQLException;
	
	/**
	 * 회원 정보 가져오는 메서드
	 * @param mem_id
	 * @return
	 */
	public MemberVO getMemberInfo(String mem_id) throws SQLException;
	
	/**
	 * 회원이 주문한 횟수를 가져오는 메서드
	 * @param mem_id
	 * @return
	 */
	public int getCountMemberPay(String mem_id) throws SQLException;
	
	/**
	 * 관리자가 회원 정보 수정하는 메서드
	 * @param vo
	 * @return
	 */
	public int updateMemberInfo(MemberVO vo) throws SQLException;
}
