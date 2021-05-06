package admin.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import util.SqlMapUtil;
import vo.LprodVO;
import vo.MemberVO;
import vo.ProdAttVO;
import vo.ProdVO;

public class AdminProductDaoImpl implements IAdminProductDao {
	private SqlMapClient client;
	private static AdminProductDaoImpl dao;
	
	private AdminProductDaoImpl() {
		client = SqlMapUtil.getSqlMapClient();
	}
	
	public static AdminProductDaoImpl getInstance() {
		if(dao == null) dao = new AdminProductDaoImpl();
		return dao;
	}
	@Override
	public List<LprodVO> LprodList() throws SQLException {
		
		return client.queryForList("lprod.listLprod");
	}

	@Override
	public int ProdInsert(ProdVO vo) throws SQLException {
		return (int) client.insert("prod.ProdInsert", vo);
	}

	@Override
	public void ProdAttInsert(ProdAttVO vo) throws SQLException {
		client.insert("prod.ProdAttInsert", vo);
	}

	@Override
	public void ProdDelete(int prodCode) throws SQLException {
		client.delete("prod.ProdDelete", prodCode);
	}

	@Override
	public List<MemberVO> getAllmember(Map<String, Object> map) throws SQLException {
		return client.queryForList("mypage.getAllMember", map);
	}

	@Override
	public int getCountAllMember() throws SQLException {
		return (int) client.queryForObject("mypage.getCountAllMember");
	}

	@Override
	public int deleteMember(String mem_id) throws SQLException {
		return client.update("mypage.deleteMemberAdmin", mem_id);
	}

	@Override
	public int activeMember(String mem_id) throws SQLException {
		return client.update("mypage.activeMember", mem_id);
	}

	@Override
	public List<MemberVO> getRPTMember(Map<String, Object> map) throws SQLException {
		return client.queryForList("mypage.getRPTMember", map);
	}

	@Override
	public int getCountRPTMember() throws SQLException {
		return (int) client.queryForObject("mypage.getCountRPTMember");
	}
	@Override
	public void UpdateProd(ProdVO vo) throws SQLException {
		client.update("prod.UpdateProd", vo);
		
	}
	@Override
	public void DeleteProdAtt(int code) throws SQLException {
		client.delete("prod.DeleteProdAtt", code);
	}


	@Override
	public MemberVO getMemberInfo(String mem_id) throws SQLException {
		return (MemberVO) client.queryForObject("mypage.getMemberInfo", mem_id);
	}

	@Override
	public int getCountMemberPay(String mem_id) throws SQLException {
		return (int) client.queryForObject("mypage.getCountMemberPay",mem_id);
	}

	@Override
	public int updateMemberInfo(MemberVO vo) throws SQLException {
		return client.update("mypage.updateMemberInfo", vo);
	}


}
