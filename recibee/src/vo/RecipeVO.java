package vo;

public class RecipeVO {
	private int rcp_num;
	private String rcp_att;
	private String rcp_manual;
	private int rcp_code;
	private int dish_code;
	
	public final int getRcp_num() {
		return rcp_num;
	}
	public final void setRcp_num(int rcp_num) {
		this.rcp_num = rcp_num;
	}
	public final String getRcp_att() {
		return rcp_att;
	}
	public final void setRcp_att(String rcp_att) {
		this.rcp_att = rcp_att;
	}
	public final String getRcp_manual() {
		return rcp_manual;
	}
	public final void setRcp_manual(String rcp_manual) {
		this.rcp_manual = rcp_manual;
	}
	public final int getRcp_code() {
		return rcp_code;
	}
	public final void setRcp_code(int rcp_code) {
		this.rcp_code = rcp_code;
	}
	public final int getDish_code() {
		return dish_code;
	}
	public final void setDish_code(int dish_code) {
		this.dish_code = dish_code;
	}
}