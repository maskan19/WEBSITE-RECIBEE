package post.faq.service;

import java.sql.SQLException;
import java.util.List;

import post.faq.dao.IPostDao;
import post.faq.dao.PostDaoImpl;
import vo.PostVO;

public class PostServiceImpl implements IPostService {
	
	private static PostServiceImpl service;
	
	private IPostDao dao;
	
	private PostServiceImpl() {
		dao = PostDaoImpl.getInstance();
	}
	
	public static PostServiceImpl getInstance() {
		if(service ==null) service = new PostServiceImpl();
		return service;
	}

//	@Override
//	public MemberVO getMyInfo(String memId) {
//		MemberVO vo = new MemberVO();
//		
//		try {
//			vo = dao.getMyInfo(memId);
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		return vo;
//	}

	
	
	
	
	
//	@Override
//	public int updateMyInfo(MemberVO vo) {
//		int cnt = 0;
//		
//		try {
//			cnt = dao.updateMyInfo(vo);
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		return cnt;
//	}

	
	
	
//	@Override
//	public MemberVO getMyInfo(MemberVO vo) {
//		MemberVO memVo = new MemberVO();
//		
//		try {
//			memVo = dao.getMyInfo(vo);
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		return memVo;
//	}

	
	@Override
	public List<PostVO> getListFaqPost() {
		List<PostVO> list = null;
		
		try {
			list=dao.getListFaqPost();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}

	
	@Override
	public int updatePost(PostVO vo) {
		int cnt = 0;
		
		try {
			cnt = dao.updatePost(vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return cnt;
	}

	@Override
	public int deletePost(int post_code) {
		int cnt =0;
		try {
			cnt = dao.deletePost(post_code);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return cnt;
	}

	@Override
	public void insertPost(PostVO vo) {
		
			try {
				dao.insertPost(vo);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
	}

}
