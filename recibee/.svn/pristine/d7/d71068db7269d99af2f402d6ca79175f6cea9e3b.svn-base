package admin.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import admin.dao.AdminProductDaoImpl;
import admin.dao.IAdminProductDao;
import vo.LprodVO;
import vo.MemberVO;
import vo.ProdAttVO;
import vo.ProdVO;

public class AdminProductServiceImpl implements IAdminProductService {
	private  IAdminProductDao dao;
	private static AdminProductServiceImpl service;
	
	private AdminProductServiceImpl() {
		dao = AdminProductDaoImpl.getInstance();
	}
	
	public static AdminProductServiceImpl getInstance() {
		if(service == null) service = new AdminProductServiceImpl();
		return service;
	}
	@Override
	public List<LprodVO> LprodList() {
		List<LprodVO> list = null;
		try {
			list = dao.LprodList();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public int ProdInsert(ProdVO vo) {
		int num = 0;
		try {
			num = dao.ProdInsert(vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return num;
	}
	@Override
	public void ProdAttInsert(ProdAttVO vo) {
		try {
			dao.ProdAttInsert(vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void ProdDelete(int prodCode) {
		try {
			dao.ProdDelete(prodCode);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public List<MemberVO> getAllmember(Map<String, Object> map) {
		List<MemberVO> list = null;
		
		try {
			list = dao.getAllmember(map);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public int getCountAllMember(){
		int cnt = 0;
		
		try {
			cnt = dao.getCountAllMember();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return cnt;
	}

	@Override
	public int deleteMember(String mem_id) {
		int cnt = 0;
		
		try {
			cnt = dao.deleteMember(mem_id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public int activeMember(String mem_id) {
		int cnt = 0;
		
		try {
			cnt = dao.activeMember(mem_id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return cnt;
	}

	@Override
	public List<MemberVO> getRPTMember(Map<String, Object> map) {
		List<MemberVO> list = null;
				
		try {
			list = dao.getRPTMember(map);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public int getCountRPTMember() {
		int cnt = 0;
		try {
			cnt = dao.getCountRPTMember();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cnt;
	}
	@Override
	public void UpdateProd(ProdVO vo) {
		try {
			dao.UpdateProd(vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void DeleteProdAtt(int code) {
		try {
			dao.DeleteProdAtt(code);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	@Override
	public MemberVO getMemberInfo(String mem_id) {
		MemberVO vo = null;
		try {
			vo = dao.getMemberInfo(mem_id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return vo;
	}

	@Override
	public int getCountMemberPay(String mem_id) {
		int cnt = 0;
		
		try {
			cnt = dao.getCountMemberPay(mem_id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public int updateMemberInfo(MemberVO vo) {
		int cnt = 0;
		try {
			cnt = dao.updateMemberInfo(vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cnt;
	}

}
