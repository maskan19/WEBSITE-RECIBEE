package product.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import product.dao.IProdDao;
import product.dao.ProdDaoImpl;
import vo.AddrVO;
import vo.CartVO;
import vo.LprodVO;
import vo.MemberVO;
import vo.PayVO;
import vo.ProdVO;

public class ProdServiceImpl implements IProdService{
	private IProdDao dao;
	private static ProdServiceImpl service;
	
	private ProdServiceImpl() {
		dao = ProdDaoImpl.getInstance();
	}
	
	public static ProdServiceImpl getInstance() {
		if(service == null) service = new ProdServiceImpl();
		return service;
	}
	@Override
	public List<LprodVO> listLprod() {
		List<LprodVO> list = null;
		try {
			list = dao.listLprod();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<Map<String, Object>> listProd(){
		List<Map<String, Object>> list = null;
		try {
			list = dao.listProd();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<Map<String, Object>> listProdDesc() {
		List<Map<String, Object>> list = null;
		try {
			list = dao.listProdDesc();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<ProdVO> searchListProd(String search) {
		List<ProdVO> list = null;
		try {
			list = dao.searchListProd(search);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<Map<String, Object>> detailProd(int code) {
		List<Map<String, Object>> list = null;
		try {
			list = dao.detailProd(code);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<ProdVO> selectLprod(int lprod) {
		List<ProdVO> list = null;
		try {
			list = dao.selectLprod(lprod);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<ProdVO> accDetailProd(int lprod) {
		List<ProdVO> list = null;
		try {
			list = dao.accDetailProd(lprod);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public List<CartVO> listCart(String memId) {
		List<CartVO> list = null;
		try {
			list = dao.listCart(memId);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public void insertCart(CartVO cvo) {
		try {
			dao.insertCart(cvo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void updateCart(CartVO cvo) {
		try {
			dao.updateCart(cvo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public List<Map<String, Object>> LprodListProd(int lprod) {
		List<Map<String, Object>> list = null;
		try {
			list = dao.LprodListProd(lprod);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public void deleteCartProd(CartVO cvo) {
		try {
			dao.deleteCartProd(cvo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public List<AddrVO> lastAddr(String mem_id) {
		List<AddrVO> list = null;
		try {
			list = dao.lastAddr(mem_id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public void memMileUpdate(MemberVO vo) {
		try {
			dao.memMileUpdate(vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public int insertAddr(AddrVO vo) {
		int code = 0;
		try {
			code = dao.insertAddr(vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return code;
	}

	@Override
	public int insertPay(PayVO vo) {
		int code = 0;
		try {
			code = dao.insertPay(vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return code;
	}

	@Override
	public void succesCart(CartVO vo) {
		try {
			dao.succesCart(vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public int selectCartProd(CartVO vo) {
		int cnt = 0;
		try {
			cnt = dao.selectCartProd(vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public void plusCartProd(CartVO vo) {
		try {
			dao.plusCartProd(vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public List<AddrVO> listAddr(String mem_id) {
		List<AddrVO> list = null;
		try {
			list = dao.listAddr(mem_id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
}
