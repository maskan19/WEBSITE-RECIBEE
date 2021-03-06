package admin.action;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import admin.service.IAdminProductService;
import admin.service.AdminProductServiceImpl;
import vo.ProdAttVO;
import vo.ProdVO;
import vo.UploadDetail;

@WebServlet("/ProdInsert.do")
@MultipartConfig(fileSizeThreshold=1024 * 1024 * 10, maxFileSize=1024*1024*30, maxRequestSize=1024*1024*60)
public class ProdInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		//Upload한 파일 저장될디렉토리 설정
		String uploadPath ="D:/A_TeachingMaterial/4.MiddleProject/workspace/recibee/WebContent/jsp/pic";
		File file = new File(uploadPath);
		if(!file.exists()){
			//if(file6.mkdir()){
			file.mkdirs();
		}
		//여러개 파일 전송할 경우

		ProdVO prodVo = new ProdVO();
		ProdAttVO attVo = new ProdAttVO();
		List<UploadDetail> fileList = new ArrayList<UploadDetail>();

		prodVo.setProd_name(request.getParameter("prod_name"));
		prodVo.setLprod_code(Integer.parseInt(request.getParameter("lprod_code")));
		prodVo.setProd_price(Integer.parseInt(request.getParameter("prod_price")));
		String prodcont = request.getParameter("prod_cont");
		prodcont.replace("\r", "").replace("\n", "<br>");
		prodVo.setProd_cont(prodcont);
		IAdminProductService service = AdminProductServiceImpl.getInstance();
		int code = service.ProdInsert(prodVo);
		
		int num = 0;
		//파일명 저장될 변수
		String fileName="";
		
		for(Part part:request.getParts()) {
			fileName = extractFileName(part);
			
			if(!"".equals(fileName)) {
				UploadDetail detail = new UploadDetail();
				detail.setFileName(fileName);
				detail.setFileSize(part.getSize());
				try {
					//파일저장하기
					//uploadPath += "/" + fileName; 
					SimpleDateFormat date = new SimpleDateFormat("yyyyMMddHHmmssSSS");
					Calendar calendar = Calendar.getInstance();
					fileName = "prod" + date.format(calendar.getTime())+fileName;
					part.write(uploadPath + File.separator + fileName);
					attVo.setProd_file(fileName);
					attVo.setProd_code(code);
					num++;
					attVo.setFile_num(num);
					service.ProdAttInsert(attVo);
					System.out.println(num);
				}catch (IOException e) {
					attVo.setProd_file(null);
				}
			}  
		}   
		



		response.sendRedirect(request.getContextPath()+"/jsp/ProdList.do");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	private String extractFileName(Part part) {
		String fileName="";//파일명이 저장될 변수

		//Content-Disposition헤더 정보값을 가져온다.
		String contentDisposition = part.getHeader("Content-Disposition");

		//파일인지 아닌지를 비교하기 ==> filename이 있으면 file/ 없으면 일반 데이터
		String[] items = contentDisposition.split(";");
		for(String item:items) {
			//filename이 있는지 검사
			if(item.trim().startsWith("filename")){
				System.out.println("=======================================");
				System.out.println(fileName);
				//=의 다음다음번째 부터 끝에서부터 2번째까지
				fileName = item.substring(item.indexOf("=") + 2, item.length()-1);

			}
		}

		return fileName;
	}
}

