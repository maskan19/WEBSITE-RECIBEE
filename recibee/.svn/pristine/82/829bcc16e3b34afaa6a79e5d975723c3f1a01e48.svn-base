package dish.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import dish.dao.DishDaoImpl;
import dish.dao.IDishDao;
import vo.DishVO;
import vo.IngredientVO;
import vo.MethodsVO;
import vo.RecipeVO;

public class DishServiceImpl implements IDishService {
	private IDishDao dishDao;
	private static DishServiceImpl service;
	
	private DishServiceImpl() {
		dishDao = DishDaoImpl.getInstance();
	}
	
	public static DishServiceImpl getInstance() {
		if(service==null) service = new DishServiceImpl();
		return service;
	}

	@Override
	public int Count(Map<String, String> map) {
		int count = 0;
		
		try {
			count = dishDao.Count(map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return count;
	}

	@Override
	public List<DishVO> SelectByPage(Map<String, String> map) {
		List<DishVO> list = null;
		
		try {
			list = dishDao.SelectByPage(map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public DishVO DishListBySelect(int DishId) {
		DishVO vo = null;
		
		try {
			vo = dishDao.DishListBySelect(DishId);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return vo;
	}

	@Override
	public List<IngredientVO> IngredientBySelect(int DishId) {
		List<IngredientVO> list = null;
		
		try {
			list = dishDao.IngredientBySelect(DishId);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public List<RecipeVO> ManualBySelect(int DishId) {
		List<RecipeVO> list = null;
		
		try {
			list = dishDao.ManualBySelect(DishId);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public int UpdateDishHit(int DishId) {
		int cnt = 0;
		
		try {
			cnt = dishDao.UpdateDishHit(DishId);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return cnt;
	}

	@Override
	public void InsertLike(Map<String, Object> map) {
		try {
			dishDao.InsertLike(map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public int SelectLike(Map<String, Object> map) {
		int count = 0;
		
		try {
			count = dishDao.SelectLike(map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return count;
	}

	@Override
	public int DeleteLike(Map<String, Object> map) {
		int cnt = 0;
		
		try {
			dishDao.DeleteLike(map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return cnt;
	}
	
	@Override
	public List<MethodsVO> GetMethods() {
		List<MethodsVO> list = null;
		
		try {
			list = dishDao.GetMethods();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public int InsertDish(DishVO vo) {
		int cnt = 0;
		
		try {
			cnt = dishDao.InsertDish(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return cnt;
	}

	@Override
	public int InsertIngre(IngredientVO vo) {
		int cnt = 0;
		
		try {
			cnt = dishDao.InsertIngre(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return cnt;
	}

	@Override
	public int InsertRecipe(RecipeVO vo) {
		int cnt = 0;
		
		try {
			cnt = dishDao.InsertRecipe(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return cnt;
	}

	@Override
	public String SelectMemAli(String MemId) {
		String memali = null;
		
		try {
			memali = dishDao.SelectMemAli(MemId);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return memali;
	}

	@Override
	public int DeleteRecipe(Map<String, Object> map) {
		int cnt = 0;
		
		try {
			cnt = dishDao.DeleteRecipe(map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return cnt;
	}

	@Override
	public int UpdateDishOne(DishVO vo) {
		int cnt = 0;
		
		try {
			cnt = dishDao.UpdateDishOne(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return cnt;
	}

	@Override
	public int UpdateDishTwo(DishVO vo) {
		int cnt = 0;
		
		try {
			cnt = dishDao.UpdateDishTwo(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return cnt;
	}

	@Override
	public int IngreNum(int DishId) {
		int count = 0;
		
		try {
			count = dishDao.IngreNum(DishId);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return count;
	}

	@Override
	public int UpdateIngre(IngredientVO vo) {
		int cnt = 0;
		
		try {
			cnt = dishDao.UpdateIngre(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return cnt;
	}

	@Override
	public int ManualNum(int DishId) {
		int count = 0;
		
		try {
			count = dishDao.ManualNum(DishId);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return count;
	}

	@Override
	public int UpdateManual(RecipeVO vo) {
		int cnt = 0;
		
		try {
			cnt = dishDao.UpdateManual(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return cnt;
	}

	@Override
	public int DeleteAdminRecipe(int DishId) {
		int cnt = 0;
		
		try {
			cnt = dishDao.DeleteAdminRecipe(DishId);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return cnt;
	}

	@Override
	public int UpdateDishHitDown(int DishId) {
		int cnt = 0;
		
		try {
			cnt = dishDao.UpdateDishHitDown(DishId);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return cnt;
	}
}