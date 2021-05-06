package dish.service;

import java.util.List;
import java.util.Map;
import vo.DishVO;
import vo.IngredientVO;
import vo.MethodsVO;
import vo.RecipeVO;

public interface IDishService {
	/**
	 * 각각의 검색결과와 방법별에 따른 검색한 전체 개수를 가져오기 위한 코드
	 * @param map 검색결과, 페이지, 방법이름
	 * @return 검색의 총 개수
	 */
	public int Count(Map<String, String> map);
	
	/**
	 * 각각의 검색결과와 방법별에 따른 검색한 내용으로 페이징처리를 하기 위한 코드
	 * @param map 검색결과, 페이지, 방법이름
	 * @return 페이지에 해당하는 리스트
	 */
	public List<DishVO> SelectByPage(Map<String, String> map);
	
	/**
	 * 레시피의 id를 통해 해당하는 요리에 대한 내용을 가져오는 코든
	 * @param DishId 요리번호
	 * @return 요리번호에 해당하는 내용
	 */
	public DishVO DishListBySelect(int DishId);
	
	/**
	 * 레시피의 id를 통해 해당하는 요리에 대한 재료를 가져오는 코드
	 * @param DishId 요리번호
	 * @return 요리번호에 해당하는 재료
	 */
	public List<IngredientVO> IngredientBySelect(int DishId);
	
	/**
	 * 레시피의 id를 통해 해당하는 요리에 대한 메뉴얼을 가져오는 코드
	 * @param DishId 요리번호
	 * @return 요리번호에 해당하는 메뉴얼
	 */
	public List<RecipeVO> ManualBySelect(int DishId);
	
	/**
	 * 조회수를 증가시키기 위한 코드
	 * @param DishId 요리번호
	 * @return 1: 성공, 0: 실패
	 */
	public int UpdateDishHit(int DishId);
	
	/**
	 * 찜버튼을 누르면 찜목록에 추가하는 코드
	 * @param map 멤버아이디, 요리번호
	 * @return 멤버아이디
	 */
	public void InsertLike(Map<String, Object> map);
	
	public int SelectLike(Map<String, Object> map);
	
	public int DeleteLike(Map<String, Object> map);
	/**
	 * 요리의 방법별 코드와 이름을 가져오기 위한 코드
	 * @return 요리의 방법코드와 방법 이름
	 */
	public List<MethodsVO> GetMethods();
	
	/**
	 * 레시피를 추가하기 위한 코드
	 * @param vo 이름, 사진, 조리방법
	 * @return 요리코드
	 */
	public int InsertDish(DishVO vo);
	
	/**
	 * 재료를 추가하기 위한 코드
	 * @param vo 재료내용
	 * @return 재료코드
	 */
	public int InsertIngre(IngredientVO vo);
	
	/**
	 * 메뉴얼을 추가하기 위한 코드
	 * @param vo 메뉴얼 내용
	 * @return 메뉴얼 코드
	 */
	public int InsertRecipe(RecipeVO vo);
	
	/**
	 * 멤버의 별명을 가져오기 위한 코드
	 * @param MemId 멤버아이디
	 * @return 멤버의 별명
	 */
	public String SelectMemAli(String MemId);
	
	/**
	 * 레시피를 삭제하기 위한 코드
	 * @param map 요리코드, 회원아이디
	 * @return 1:성공, 0:실패
	 */
	public int DeleteRecipe(Map<String, Object> map);
	
	public int DeleteAdminRecipe(int DishId);
	
	public int UpdateDishOne(DishVO vo);
	
	public int UpdateDishTwo(DishVO vo);
	
	public int IngreNum(int DishId);
	
	public int UpdateIngre(IngredientVO vo);
	
	public int ManualNum(int DishId);
	
	public int UpdateManual(RecipeVO vo);
	
	public int UpdateDishHitDown(int DishId);
}