package product.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import vo.AddrVO;
import vo.CartVO;
import vo.LprodVO;
import vo.MemberVO;
import vo.PayVO;
import vo.ProdVO;

public interface IProdDao {
	// 분류 명 리스트 가져오기
	public List<LprodVO> listLprod() throws SQLException;
	
	// 상품 리스트 가격 낮은순 가져오기(기본)
	public List<Map<String, Object>> listProd() throws SQLException;
	
	// 상품 리스트 가격 높은순 가져오기
	public List<Map<String, Object>> listProdDesc() throws SQLException;
	
	// 상품 검색 리스트 가져오기
	public List<ProdVO> searchListProd(String search) throws SQLException;
	
	// 상품 상세 보기
	public List<Map<String, Object>> detailProd(int code) throws SQLException;
	
	// 상품 상세 보기 - 관련상품(분류가 동일한것)
	public List<ProdVO> accDetailProd(int lprod) throws SQLException;
	
	// 분류별 상품 리스트
	public List<ProdVO> selectLprod(int lprod) throws SQLException;
	
	// 상품 카트 리스트
	public List<CartVO> listCart(String memId) throws SQLException;
	
	// 상품 카트 추가
	public void insertCart(CartVO cvo) throws SQLException;
	
	// 상품 카트 수정
	public void updateCart(CartVO cvo) throws SQLException;
	
	// 상품 분류별 리스트
	public List<Map<String, Object>> LprodListProd(int lprod) throws SQLException;
	
	// 카트 상품 삭제
	public void deleteCartProd(CartVO cvo) throws SQLException;
	
	// 최근 배송목록 가져오기
	public List<AddrVO> lastAddr(String mem_id) throws SQLException;
	
	// 배송목록 추가
	public int insertAddr(AddrVO vo) throws SQLException;
	
	// 결제코드 추가
	public int insertPay(PayVO vo) throws SQLException;
	
	// 주문여부 업데이트
	public void succesCart(CartVO vo) throws SQLException;
	
	// 마일리지 업데이트
	public void memMileUpdate(MemberVO vo) throws SQLException;
	
	// 장바구니에 같은 상품이 있는지 검사
	public int selectCartProd(CartVO vo) throws SQLException;
	
	// 장바구니에 같은 상품이 있을경우
	public void plusCartProd(CartVO vo) throws SQLException;
	
	// 배송지 목록 가져오기
	public List<AddrVO> listAddr(String mem_id) throws SQLException;
	
}