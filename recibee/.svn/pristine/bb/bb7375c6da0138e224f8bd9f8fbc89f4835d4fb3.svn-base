package dish.action;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import dish.service.DishServiceImpl;
import dish.service.IDishService;
import vo.DishVO;
import vo.IngredientVO;
import vo.MemberVO;
import vo.RecipeVO;
import vo.UploadDetail;

@WebServlet("/InsertRecipe.do")
@MultipartConfig(fileSizeThreshold=1024 * 1024 * 10, maxFileSize=1024*1024*30, maxRequestSize=1024*1024*60)
public class InsertRecipe extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		//Upload한 파일 저장될디렉토리 설정
		String uploadPath ="D:\\A_TeachingMaterial\\4.MiddleProject\\workspace\\recibee\\WebContent\\jsp\\pic";
		IDishService service = DishServiceImpl.getInstance();
		
		DishVO dishVo = new DishVO();
		RecipeVO recipeVo = new RecipeVO();
		IngredientVO ingredientVo = new IngredientVO();
		List<UploadDetail> fileList = new ArrayList<UploadDetail>();
		String fileName = "";
		String paramname = "";
		int dish_code = 0;
		int ingnum = Integer.parseInt(request.getParameter("ingrenum"));
		dishVo.setMth_code(Integer.parseInt(request.getParameter("mth_name")));
		int num = 0;
		
		for(Part part:request.getParts()) {
			fileName = extractFileName(part);
			paramname = extractName(part);
			System.out.println(paramname + " : " + fileName);
			if(paramname.equals("dish_photo")) {
				UploadDetail detail = new UploadDetail();
				detail.setFileName(fileName);
				detail.setFileSize(part.getSize());
				try {
					SimpleDateFormat date = new SimpleDateFormat("yyyyMMddHHmmssSSS");
					Calendar calendar = Calendar.getInstance();
					fileName = "dish" + date.format(calendar.getTime())+fileName;
					part.write(uploadPath + File.separator + fileName);
					HttpSession session = request.getSession();
					MemberVO member = (MemberVO)session.getAttribute("Member");
					String mem_id = member.getMem_id();
					dishVo.setMem_id(mem_id);
					dishVo.setDish_name(request.getParameter("dish_name"));
					// Dish 인서트 하기!!! - 디시 인서트 하고 디시코드 가져오기 셀렉키로
					dishVo.setDish_photo(fileName);
					dish_code = service.InsertDish(dishVo);
					// 재료 인서트하기!!!
					for(int i=1; i<=ingnum; i++) {
						ingredientVo = new IngredientVO();
						String name = request.getParameter("ingredient_name"+i);
						ingredientVo.setDish_code(dish_code);
						ingredientVo.setIngredient_name(name);
						ingredientVo.setIngredient_num(i);
						service.InsertIngre(ingredientVo);
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			if(paramname.equals("rcp_att")&&!"".equals(fileName)) {
				UploadDetail detail = new UploadDetail();
				detail.setFileName(fileName);
				detail.setFileSize(part.getSize());
				try {
					SimpleDateFormat date = new SimpleDateFormat("yyyyMMddHHmmssSSS");
					Calendar calendar = Calendar.getInstance();
					fileName = "dish" + date.format(calendar.getTime())+fileName;
					part.write(uploadPath + File.separator + fileName);
					recipeVo.setDish_code(dish_code);
					num++;
					String manual = request.getParameter("rcp_manual"+num);
					manual.replace("\r", "").replace("\n", "<br>");
					recipeVo.setRcp_manual(manual);
					recipeVo.setRcp_att(fileName);
					recipeVo.setRcp_num(num);
					service.InsertRecipe(recipeVo);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			if(paramname.equals("rcp_att")&&"".equals(fileName)){
				UploadDetail detail = new UploadDetail();
				detail.setFileName(fileName);
				detail.setFileSize(part.getSize());
				try {
					recipeVo.setDish_code(dish_code);
					num++;
					String manual = request.getParameter("rcp_manual"+num);
					manual.replace("\r", "").replace("\n", "<br>");
					recipeVo.setRcp_manual(manual);
					recipeVo.setRcp_att(null);
					recipeVo.setRcp_num(num);
					service.InsertRecipe(recipeVo);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		response.sendRedirect(request.getContextPath()+"/jsp/RecipeMain.do");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	private String extractFileName(Part part) {
		String fileName="";//파일명이 저장될 변수
		String paramName=""; // 파라미터 명이 저장될 변수

		//Content-Disposition헤더 정보값을 가져온다.
		String contentDisposition = part.getHeader("Content-Disposition");

		//파일인지 아닌지를 비교하기 ==> filename이 있으면 file/ 없으면 일반 데이터
		String[] items = contentDisposition.split(";");
		for(String item:items) {
			//filename이 있는지 검사
			if(item.trim().startsWith("filename")){
				System.out.println(fileName);
				//=의 다음다음번째 부터 끝에서부터 2번째까지
				fileName = item.substring(item.indexOf("=") + 2, item.length()-1);
			}
		}
		return fileName;
	}
	
	private String extractName(Part part) {
		String paramName=""; // 파라미터 명이 저장될 변수

		//Content-Disposition헤더 정보값을 가져온다.
		String contentDisposition = part.getHeader("Content-Disposition");

		//파일인지 아닌지를 비교하기 ==> filename이 있으면 file/ 없으면 일반 데이터
		String[] items = contentDisposition.split(";");
		for(String item:items) {
			//filename이 있는지 검사
			if(item.trim().startsWith("name")){
				System.out.println(paramName);
				//=의 다음다음번째 부터 끝에서부터 2번째까지
				paramName = item.substring(item.indexOf("=") + 2, item.length()-1);
			}
		}

		return paramName;
	}

}