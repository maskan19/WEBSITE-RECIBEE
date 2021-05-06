package vo;

public class IngredientVO {
	private String ingredient_name;
	private int ingredient_num;
	private int dish_code;
	private int ingredient_code;
	
	public final String getIngredient_name() {
		return ingredient_name;
	}
	public final void setIngredient_name(String ingredient_name) {
		this.ingredient_name = ingredient_name;
	}
	public final int getIngredient_num() {
		return ingredient_num;
	}
	public final void setIngredient_num(int ingredient_num) {
		this.ingredient_num = ingredient_num;
	}
	public final int getDish_code() {
		return dish_code;
	}
	public final void setDish_code(int dish_code) {
		this.dish_code = dish_code;
	}
	public final int getIngredient_code() {
		return ingredient_code;
	}
	public final void setIngredient_code(int ingredient_code) {
		this.ingredient_code = ingredient_code;
	}
}