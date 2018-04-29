package model;

public class ProductDetail {
	private String product_picture;
	private String detail_info;
	public String getProduct_picture() {
		return product_picture;
	}
	public void setProduct_picture(String product_picture) {
		this.product_picture = product_picture;
	}
	public String getDetail_info() {
		return detail_info;
	}
	public void setDetail_info(String detail_info) {
		this.detail_info = detail_info;
	}
	@Override
	public String toString() {
		return "ProductDetails [product_picture=" + product_picture + ", detail_info=" + detail_info + "]";
	}
}
