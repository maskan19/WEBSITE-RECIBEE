package member.action;

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
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import member.service.IMemberService;
import member.service.MemberServiceImpl;
import vo.MemberVO;
import vo.PostAttVO;
import vo.PostVO;
import vo.UploadDetail;

@WebServlet("/PostInsert.do")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10, maxFileSize = 1024 * 1024 * 30, maxRequestSize = 1024 * 1024
		* 60)
public class PostInsertAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		// Upload한 파일 저장될디렉토리 설정
		String uploadPath = "D:/A_TeachingMaterial/4.MiddleProject/workspace/recibee/WebContent/jsp/pic";

		// 여러개 파일 전송할 경우
		PostVO postVo = new PostVO();
		List<PostAttVO> attList = new ArrayList<>();
		/* List<UploadDetail> fileList = new ArrayList<UploadDetail>(); */
		HttpSession session = request.getSession();
		int board_code = (Integer)session.getAttribute("board_code");
		postVo.setBoard_code(board_code);
		MemberVO memVo = (MemberVO)request.getSession().getAttribute("Member");
		
		postVo.setMem_id(memVo.getMem_id()); ///////////////////////////////////////////
		postVo.setPost_title(request.getParameter("post_title"));

		String cont = request.getParameter("post_cont");
		cont.replace("\r", "").replace("\n", "<br>");
		
		IMemberService service = MemberServiceImpl.getInstance();
		/* int code = service.insertPost(postVo); */

		int num = 0;
		// 파일명 저장될 변수
		String fileName = "";

		for (Part part : request.getParts()) {
			fileName = extractFileName(part);

			if (!"".equals(fileName)) {
				UploadDetail detail = new UploadDetail();
				detail.setFileName(fileName);
				detail.setFileSize(part.getSize());
				PostAttVO attVo = new PostAttVO();
				try {
					SimpleDateFormat date = new SimpleDateFormat("yyyyMMddHHmmssSSS");
					Calendar calendar = Calendar.getInstance();
					fileName = "post2" + date.format(calendar.getTime()) + fileName;
					part.write(uploadPath + File.separator + fileName);
					attVo.setPost_file(fileName);
					num++;
					attVo.setFile_num(num);
					attList.add(attVo);
				} catch (IOException e) {
					attVo.setPost_file(null);
				}
			}
		}
		
		String[] cont_arr = cont.split("\"");
		String postcont = "";
		
		for(int i=0; i<cont_arr.length; i++){
		  if(cont_arr[i].equals(" src=")){
			  for(int j = 0; j<attList.size(); j++) {
				  if(cont_arr[i-1].endsWith(Integer.toString(j+1)+"_att")) {
					  cont_arr[i+1]= "pic/" + attList.get(j).getPost_file();
				  }
			  }
		  }
		  if (i!=cont_arr.length-1) {
			  postcont+= cont_arr[i]+"\"";
		  }else {
			  postcont+= cont_arr[i];
		  }
		}
		postVo.setPost_cont(postcont);
		int code = service.insertPost(postVo);
		for(PostAttVO att : attList) {
			att.setPost_code(code);
			service.insertPostAtt(att);
		}
		
		response.sendRedirect(request.getContextPath() + "/jsp/Post.do?post=" + code);
//		switch (board_code) {
//		case 4:
//			response.sendRedirect(request.getContextPath() + "/jsp/Board4.do");
//			break;
//		case 5:
//			response.sendRedirect(request.getContextPath() + "/jsp/Board5.do");
//			break;
//
//		default:
//			response.sendRedirect(request.getContextPath() + "/jsp/Board.do");
//			break;
//		}

		/*
		 * response.sendRedirect(request.getContextPath() + "/jsp/Board.do");// 글목록으로 이동
		 */
		}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	private String extractFileName(Part part) {
		String fileName = "";// 파일명이 저장될 변수

		// Content-Disposition헤더 정보값을 가져온다.
		String contentDisposition = part.getHeader("Content-Disposition");

		// 파일인지 아닌지를 비교하기 ==> filename이 있으면 file/ 없으면 일반 데이터
		String[] items = contentDisposition.split(";");
		for (String item : items) {
			// filename이 있는지 검사
			if (item.trim().startsWith("filename")) {
				System.out.println("===================");
				System.out.println(fileName);
				// =의 다음다음번째 부터 끝에서부터 2번째까지
				fileName = item.substring(item.indexOf("=") + 2, item.length() - 1);
			}
		}
		return fileName;
	}
}
