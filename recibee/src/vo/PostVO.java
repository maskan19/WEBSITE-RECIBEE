package vo;

import java.util.List;

public class PostVO {
	private int post_rpt;
	private int post_hit;
	private String post_date;
	private String post_cont;
	private String post_title;
	private String mem_id;
	private int board_code;
	private int post_code;
	private List<PostrplVO> post_rpls;
	private List<PostAttVO> post_atts;
	
	public int getPost_rpt() {
		return post_rpt;
	}
	public void setPost_rpt(int post_rpt) {
		this.post_rpt = post_rpt;
	}
	public int getPost_hit() {
		return post_hit;
	}
	public void setPost_hit(int post_hit) {
		this.post_hit = post_hit;
	}
	public String getPost_date() {
		return post_date;
	}
	public void setPost_date(String post_date) {
		this.post_date = post_date;
	}
	public String getPost_cont() {
		return post_cont;
	}
	public void setPost_cont(String post_cont) {
		this.post_cont = post_cont;
	}
	public String getPost_title() {
		return post_title;
	}
	public void setPost_title(String post_title) {
		this.post_title = post_title;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public int getBoard_code() {
		return board_code;
	}
	public void setBoard_code(int board_code) {
		this.board_code = board_code;
	}
	public int getPost_code() {
		return post_code;
	}
	public void setPost_code(int post_code) {
		this.post_code = post_code;
	}
	public List<PostrplVO> getPost_rpls() {
		return post_rpls;
	}
	public void setPost_rpls(List<PostrplVO> post_rpls) {
		this.post_rpls = post_rpls;
	}
	public List<PostAttVO> getPost_atts() {
		return post_atts;
	}
	public void setPost_atts(List<PostAttVO> post_atts) {
		this.post_atts = post_atts;
	}
	
}