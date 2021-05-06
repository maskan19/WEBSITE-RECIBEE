package dish.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import com.ibatis.sqlmap.client.SqlMapClient;
import util.SqlMapUtil;
import vo.DishVO;
import vo.IngredientVO;
import vo.MethodsVO;
import vo.RecipeVO;

public class DishDaoImpl implements IDishDao {
	private SqlMapClient smc;
	private static DishDaoImpl dao;
	
	private DishDaoImpl() {
		smc = SqlMapUtil.getSqlMapClient();
	}
	
	public static DishDaoImpl getInstance() {
		if(dao==null) dao= new DishDaoImpl();
		return dao;
	}

	@Override
	public int Count(Map<String, String> map) throws SQLException {
		return (int) smc.queryForObject("dish.Count", map);
	}

	@Override
	public List<DishVO> SelectByPage(Map<String, String> map) throws SQLException {
		return smc.queryForList("dish.SelectByPage", map);
	}

	@Override
	public DishVO DishListBySelect(int DishId) throws SQLException {
		return (DishVO) smc.queryForObject("dish.DishListBySelect", DishId);
	}

	@Override
	public List<IngredientVO> IngredientBySelect(int DishId) throws SQLException {
		return smc.queryForList("dish.IngredientBySelect", DishId);
	}

	@Override
	public List<RecipeVO> ManualBySelect(int DishId) throws SQLException {
		return smc.queryForList("dish.ManualBySelect", DishId);
	}

	@Override
	public int UpdateDishHit(int DishId) throws SQLException {
		return smc.update("dish.UpdateDishHit", DishId);
	}

	@Override
	public void InsertLike(Map<String, Object> map) throws SQLException {
		smc.insert("dish.InsertLike", map);
	}

	@Override
	public int SelectLike(Map<String, Object> map) throws SQLException {
		return (int) smc.queryForObject("dish.SelectLike", map);
	}

	@Override
	public int DeleteLike(Map<String, Object> map) throws SQLException {
		return smc.delete("dish.DeleteLike", map);
	}
	
	@Override
	public List<MethodsVO> GetMethods() throws SQLException {
		return smc.queryForList("dish.GetMethods");
	}

	@Override
	public int InsertDish(DishVO vo) throws SQLException {
		return (int) smc.insert("dish.InsertDish", vo);
	}

	@Override
	public int InsertIngre(IngredientVO vo) throws SQLException {
		return (int) smc.insert("dish.InsertIngre", vo);
	}

	@Override
	public int InsertRecipe(RecipeVO vo) throws SQLException {
		return (int) smc.insert("dish.InsertRecipe", vo);
	}

	@Override
	public String SelectMemAli(String MemId) throws SQLException {
		return (String) smc.queryForObject("dish.SelectMemAli", MemId);
	}

	@Override
	public int DeleteRecipe(Map<String, Object> map) throws SQLException {
		return smc.update("dish.DeleteRecipe", map);
	}
	
	@Override
	public int DeleteAdminRecipe(int DishId) throws SQLException {
		return smc.update("dish.DeleteAdminRecipe", DishId);
	}

	@Override
	public int UpdateDishOne(DishVO vo) throws SQLException {
		return smc.update("dish.UpdateDishOne", vo);
	}

	@Override
	public int UpdateDishTwo(DishVO vo) throws SQLException {
		return smc.update("dish.UpdateDishTwo", vo);
	}

	@Override
	public int IngreNum(int DishId) throws SQLException {
		return (int) smc.queryForObject("dish.IngreNum", DishId);
	}

	@Override
	public int UpdateIngre(IngredientVO vo) throws SQLException {
		return smc.update("dish.UpdateIngre", vo);
	}

	@Override
	public int ManualNum(int DishId) throws SQLException {
		return (int) smc.queryForObject("dish.ManualNum", DishId);
	}

	@Override
	public int UpdateManual(RecipeVO vo) throws SQLException {
		return smc.update("dish.UpdateManual", vo);
	}

	@Override
	public int UpdateDishHitDown(int DishId) throws SQLException {
		return smc.update("dish.UpdateDishHitDown", DishId);
	}
}