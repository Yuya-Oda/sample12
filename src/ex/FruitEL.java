package ex;

public class FruitEL implements java.io.Serializable{

	private String name;
	private int price;

	public FruitEL(String name, int price) {
		this.name = name;
		this.price = price;
	}

	public String getName() {
		return name;
	}

	public int getPrice() {
		return price;
	}

}
