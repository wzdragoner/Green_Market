package model;

public class Transaction {
	private String product_name;
	private String product_price;
	private String product_picture;
	private String seller_name;
	private String buyer_name;

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public String getProduct_price() {
		return product_price;
	}

	public void setProduct_price(String product_price) {
		this.product_price = product_price;
	}

	public String getProduct_picture() {
		return product_picture;
	}

	public void setProduct_picture(String product_picture) {
		this.product_picture = product_picture;
	}

	public String getSeller_name() {
		return seller_name;
	}

	public void setSeller_name(String seller_name) {
		this.seller_name = seller_name;
	}

	public String getBuyer_name() {
		return buyer_name;
	}

	public void setBuyer_name(String buyer_name) {
		this.buyer_name = buyer_name;
	}

	@Override
	public String toString() {
		return "Transaction [product_name=" + product_name + ", product_price=" + product_price + ", product_picture="
				+ product_picture + ", seller_name=" + seller_name + ", buyer_name=" + buyer_name + "]";
	}
}
