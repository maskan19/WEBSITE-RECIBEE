package product.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import util.SqlMapUtil;
import vo.AddrVO;
import vo.CartVO;
import vo.LprodVO;
import vo.MemberVO;
import vo.PayVO;
import vo.ProdVO;

public class ProdDaoImpl implements IProdDao {
	
	private SqlMapClient client;
	private static ProdDaoImpl dao;
	
	private ProdDaoImpl() {
		client = SqlMapUtil.getSqlMapClient();
	}
	
	public static ProdDaoImpl getInstance() {
		if(dao == null) dao = new ProdDaoImpl();
		return dao;
	}
	@Override
	public List<LprodVO> listLprod() throws SQLException {
		return client.queryForList("lprod.listLprod");
	}

	@Override
	public List<Map<String, Object>> listProd() throws SQLException {
		return client.queryForList("prod.listProd");
	}

	@Override
	public List<Map<String, Object>> listProdDesc() throws SQLException {
		return client.queryForList("prod.listProdDesc");
	}

	@Override
	public List<ProdVO> searchListProd(String search) throws SQLException {
		return client.queryForList("prod.searchListProd", search);
	}

	@Override
	public List<Map<String, Object>> detailProd(int code) throws SQLException {
		return client.queryForList("prod.detailProd", code);
	}

	@Override
	public List<ProdVO> selectLprod(int lprod) throws SQLException {
		return client.queryForList("prod.selectLprod", lprod);
	}

	@Override
	public List<ProdVO> accDetailProd(int lprod) throws SQLException {
		return client.queryForList("prod.accDetailProd", lprod);
	}

	@Override
	public List<CartVO> listCart(String memId) throws SQLException {
		return client.queryForList("cart.listCart", memId);
	}

	@Override
	public void insertCart(CartVO cvo) throws SQLException {
		client.insert("cart.insertCart", cvo);
	}

	@Override
	public void updateCart(CartVO cvo) throws SQLException {
		client.update("cart.updateCart", cvo);
	}

	@Override
	public List<Map<String, Object>> LprodListProd(int lprod) throws SQLException {
		return client.queryForList("prod.LprodListProd", lprod);
	}

	@Override
	public void deleteCartProd(CartVO cvo) throws SQLException {
		client.delete("cart.deleteCartProd", cvo);
	}

	@Override
	public List<AddrVO> lastAddr(String mem_id) throws SQLException {
		return client.queryForList("addr.lastAddr", mem_id);
	}

	@Override
	public void memMileUpdate(MemberVO vo) throws SQLException {
		client.update("prod.memMileUpdate", vo);
	}

	@Override
	public int insertAddr(AddrVO vo) throws SQLException {
		return (int)client.insert("addr.insertAddr", vo);
	}

	@Override
	public int insertPay(PayVO vo) throws SQLException {
		return (int)client.insert("pay.insertPay", vo);
	}

	@Override
	public void succesCart(CartVO vo) throws SQLException {
		client.update("cart.succesCart", vo);
	}

	@Override
	public int selectCartProd(CartVO vo) throws SQLException {
		return (int)client.queryForObject("cart.selectCartProd", vo);
	}

	@Override
	public void plusCartProd(CartVO vo) throws SQLException {
		client.update("cart.plusCartProd", vo);
	}

	@Override
	public List<AddrVO> listAddr(String mem_id) throws SQLException {
		return client.queryForList("addr.listAddr", mem_id);
	}
	
	
}
