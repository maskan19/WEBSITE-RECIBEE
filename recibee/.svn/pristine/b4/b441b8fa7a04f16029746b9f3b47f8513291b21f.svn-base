package common.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import common.dao.CommonDaoImpl;
import common.dao.ICommonDao;
import vo.DishVO;
import vo.PostAttVO;
import vo.PostVO;
import vo.PostrplVO;
import vo.ProdAttVO;
import vo.ProdVO;

public class CommonServiceImpl implements ICommonService {
	private ICommonDao comDao;

	private static CommonServiceImpl comService;

	private CommonServiceImpl() {
		comDao = CommonDaoImpl.getInstance();
	}

	public static CommonServiceImpl getInstance() {
		if (comService == null)
			comService = new CommonServiceImpl();
		return comService;
	}

	@Override
	public List<DishVO> getRecentDish() {
		List<DishVO> dish = null;
		try {
			dish = comDao.getRecentDish();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dish;
	}

	@Override
	public List<ProdVO> getDiscountProd() {
		List<ProdVO> prod = null;
		try {
			prod = comDao.getDiscountProd();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return prod;
	}

//	@Override
//	public List<PostVO> getPostList() {
//		List<PostVO> post = null;
//		try {
//			post = comDao.getPostList();
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		return post;
//	}

	@Override
	public PostVO getRecentPost(int rownum) {
		PostVO post = null;
		try {
			post = comDao.getRecentPost(rownum);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return post;
	}

	@Override
	public List<PostAttVO> getPostAtt(int rownum) {
		List<PostAttVO> attList = new ArrayList<PostAttVO>();
		try {
			attList = comDao.getPostAtt(rownum);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return attList;
	}

	@Override
	public List<PostrplVO> getPostRpl(int rownum) {
		List<PostrplVO> rplList = new ArrayList<PostrplVO>();
		try {
			rplList = comDao.getPostRpl(rownum);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rplList;
	}

	@Override
	public ProdVO getRecentProd(int rownum) {
		ProdVO prod = new ProdVO();
		try {
			prod = comDao.getRecentProd(rownum);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return prod;
	}

	@Override
	public List<ProdAttVO> getProdAtt(int rownum) {
		List<ProdAttVO> attList = new ArrayList<ProdAttVO>();
		try {
			attList = comDao.getProdAtt(rownum);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return attList;
	}

	@Override
	public List<PostVO> searchPost4(String keyword) {
		List<PostVO> post = new ArrayList<PostVO>();
		try {
			post = comDao.searchPost4(keyword);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return post;
	}
	
	@Override
	public List<PostVO> searchPost5(String keyword) {
		List<PostVO> post = new ArrayList<PostVO>();
		try {
			post = comDao.searchPost5(keyword);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return post;
	}

	@Override
	public List<DishVO> searchDish(String keyword) {
		List<DishVO> dish = new ArrayList<DishVO>();
		try {
			dish = comDao.searchDish(keyword);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dish;
	}
	@Override
	public List<ProdVO> searchProd(String keyword) {
		List<ProdVO> prod = new ArrayList<ProdVO>();
		try {
			prod = comDao.searchProd(keyword);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return prod;
	}
	
	@Override
	public List<ProdAttVO> searchProdAtt(int post_code) {
		List<ProdAttVO> att = new ArrayList<ProdAttVO>();
		try {
			att = comDao.searchProdAtt(post_code);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return att;
	}

	
}
