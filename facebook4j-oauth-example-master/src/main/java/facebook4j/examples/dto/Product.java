package facebook4j.examples.dto;

public class Product {
	private String id;
	private String name;
	private String image;
	private String price;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public Product(String id, String name, String image, String price) {
		super();
		this.id = id;
		this.name = name;
		this.image = image;
		this.price = price;
	}
	
}
