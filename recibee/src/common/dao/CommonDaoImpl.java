package common.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import util.SqlMapUtil;
import vo.DishVO;
import vo.PostAttVO;
import vo.PostVO;
import vo.PostrplVO;
import vo.ProdAttVO;
import vo.ProdVO;

public class CommonDaoImpl implements ICommonDao {

	private SqlMapClient smc;
	private static CommonDaoImpl singleDao;

	private CommonDaoImpl() {
		smc = SqlMapUtil.getSqlMapClient();
	}

	public static CommonDaoImpl getInstance() {
		if (singleDao == null)
			singleDao = new CommonDaoImpl();
		return singleDao;
	}

	@Override
	public List<DishVO> getRecentDish() throws SQLException {
		List<DishVO> dish = (List<DishVO>) smc.queryForList("common.getRecentDish");
		return dish;
	}

	@Override
	public List<ProdVO> getDiscountProd() throws SQLException {
		List<ProdVO> prod = (List<ProdVO>) smc.queryForList("common.getDiscountProd");
		return prod;
	}

//	@Override
//	public List<PostVO> getRecentPost() throws SQLException {
//		List<PostVO> post = (List<PostVO>) smc.queryForList("common.getRecentPost");
//		return post;
//	}

	@Override
	public PostVO getRecentPost(int rownum) throws SQLException {
		PostVO post = (PostVO) smc.queryForObject("common.getRecentPost", rownum);
		return post;
	}

	@Override
	public List<PostAttVO> getPostAtt(int rownum) throws SQLException {
		List<PostAttVO> attList = (List<PostAttVO>) smc.queryForList("post.getPostAtt", rownum);
		return attList;
	}

	@Override
	public List<PostrplVO> getPostRpl(int rownum) {
		List<PostrplVO> rplList = new ArrayList<PostrplVO>();
		try {
			rplList = (List<PostrplVO>) smc.queryForList("post.getPostRpl", rownum);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rplList;
	}

	@Override
	public ProdVO getRecentProd(int rownum) throws SQLException{
		ProdVO prod = (ProdVO) smc.queryForObject("common.getRecentProd", rownum);
		return prod;
	}

	@Override
	public List<ProdAttVO> getProdAtt(int rownum)  throws SQLException{
		List<ProdAttVO> attList = (List<ProdAttVO>) smc.queryForList("prod.getProdAtt", rownum);
		return attList;
	}

	@Override
	public List<PostVO> searchPost4(String keyword) throws SQLException {
		List<PostVO> post = (List<PostVO>) smc.queryForList("common.searchPost4", keyword);
		return post;
	}
	
	@Override
	public List<PostVO> searchPost5(String keyword) throws SQLException {
		List<PostVO> post = (List<PostVO>) smc.queryForList("common.searchPost5", keyword);
		return post;
	}
	
	@Override
	public List<DishVO> searchDish(String keyword) throws SQLException {
		List<DishVO> dish = (List<DishVO>) smc.queryForList("common.searchDish", keyword);
		return dish;
	}

	@Override
	public List<ProdVO> searchProd(String keyword) throws SQLException {
		List<ProdVO> prod = (List<ProdVO>) smc.queryForList("common.searchProd", keyword);
		return prod;
	}
	
	
	
	@Override
	public List<ProdAttVO> searchProdAtt(int post_code) throws SQLException {
		List<ProdAttVO> att = (List<ProdAttVO>) smc.queryForList("prod.searchProdAtt", post_code);
		return att;
	}
	
	

	
}
