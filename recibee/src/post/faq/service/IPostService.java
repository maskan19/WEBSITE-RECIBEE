package post.faq.service;

import java.util.List;

import vo.PostVO;

public interface IPostService {
	
	// FAQ전체 내용 출력
	public List<PostVO> getListFaqPost();

	// FAQ 업데이트
	public int updatePost(PostVO vo);
	
	// FAQ 삭제
	public int deletePost(int post_code);
	
	// FAQ 등록
	public void insertPost(PostVO vo);
	
}
