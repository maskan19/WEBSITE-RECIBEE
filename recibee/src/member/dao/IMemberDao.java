package member.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import vo.CartVO;
import vo.DishVO;
import vo.MemberVO;
import vo.PostAttVO;
import vo.PostVO;
/**
 * 
 * @author F1
 *
 */
public interface IMemberDao {

	/**
	 * PostVO객체에 담겨진 자료를 DB에 insert하는 메서드
	 * 
	 * @param postVo 가입할 회원 MemberVO 객체
	 * @return insert 성공: 1, 실패: 0
	 */
	public int insertPost(PostVO postVo) throws SQLException;

	/**
	 * PostAttVO객체에 담겨진 자료를 DB에 insert하는 메서드
	 * 
	 * @param attVo 가입할 회원 MemberVO 객체
	 * @return insert 성공: 1, 실패: 0
	 */
	public int insertPostAtt(PostAttVO attVo) throws SQLException;
	
	/**
	 * MemberVO객체에 담겨진 자료를 DB에 insert하는 메서드
	 * 
	 * @param memVo 가입할 회원 MemberVO 객체
	 * @return insert 성공: 1, 실패: 0
	 */
	public int insertMember(MemberVO memVo) throws SQLException;
	
	/**
	 * 회원 ID를 인수로 받아서 해당 회원 정보를 삭제하는 메서드
	 * @param memId 삭제할 회원 ID
	 * @return delete 성공: 1, 삭제 실패: 0
	 * @throws SQLException 
	 */
	public int deleteMember(String memId) throws SQLException;

	/**
	 * DB의 전체 회원 정보를 가져와서 List에 담아 반환하는 메서드
	 * @return MemberVO객체를 담고 있는 List 객체
	 */
	public List<MemberVO> getAllMember();
	
	/**
	 * 회원 ID를 인수로 받아서 해당 회원의 개수를 반환하는 메서드
	 * @param memId 검색할 회원 ID
	 * @return 검색된 회원ID개수
	 * @throws SQLException 
	 */
	public int getMemberCount(String memId) throws SQLException;
	
	/**
	 * 회원 별명을 인수로 받아서 해당 회원의 개수를 반환하는 메서드
	 * @param Alias 검색할 회원 별명
	 * @return 검색된 회원 별명 개수
	 */
	public int getAliasCount(String Alias) throws SQLException;
	
	/**
	 * Map의 정보를 이용하여 회원 정보를 가져오는 메서드
	 * Key값 정보 : 회원ID(mem_id), 회원PW(mem_pass)
	 * @param paramMap 로그인할 회원 정보가 저장된 Map객체
	 * @return 검색된 회원 정보가 저장된 MemberVO객체
	 */
	public MemberVO loginMember(Map<String, String> paramMap) throws SQLException;
	
	/**
	 * 회원의 likelist를 List객체로 반환하는 메서드
	 * @param memId 검색할 멤버 아이디
	 * @return DishVO객체를 담고 있는 List 객체
	 */
	public List<DishVO> getLikelist(String memId) throws SQLException;
	
	/**
	 * 회원의 cartlist를  List객체로 반환하는 메서드
	 * @param memId 검색할 멤버 아이디
	 * @return CartVO객체를 담고 있는 List 객체
	 */
	public int getCartlist(String memId) throws SQLException;
	
	/**
	 * Map의 정보를 이용하여 회원 정보 중 원하는 컬럼을 수정하는 메서드
	 * Key값 정보 : 회원ID(memid), 수정할 컬럼명(field), 수정할 데이터(data)
	 * @param paramMap Update할 회원 정보가 저장된 Map객체
	 * @return 작업 성공: 1, 작업 실패:0
	 */
	public int updateMember(Map<String, String> paramMap);
	
	/**
	 * 회원ID를 파라미터로 받아서 해당 회원 정보를 반환하는 메서드
	 * @param memId 검색할 회원 ID
	 * @return 검색된 회원 정보가 저장된 MemberVO객체
	 */
	public MemberVO getMember(String memId);
	
	/**
	 * 회원의 정보를 파라미터로 받아서 해당 회원의 이메일을 반환하는 메서드
	 * @param vo 회원의 정보(이름, 전화번호)
	 * @return 회원의 이메일
	 */
	public String findemail(MemberVO vo) throws SQLException;
	
	/**
	 * 이메일을 작성하면 회원정보가 있는지 확인하기 위한 메서드
	 * @param memId 회원의 ID
	 * @return 0:존재x 1:존재O 
	 */
	public int findpw(String memId) throws SQLException;
	
	/**
	 * 비밀번호를 업데이트 하기위한 메서드
	 * @param vo 회원의 정보(아이디와 비밀번호)
	 * @return 성공: 1, 실패: 0
	 */
	public int updatepw(MemberVO vo) throws SQLException;
}
