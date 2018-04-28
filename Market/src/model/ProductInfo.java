package model;

import java.math.BigDecimal;

//product_id, product_name, product_price, product_picture, 
//seller_picture, seller_name, seller_address
public class ProductInfo {
	private int productId;
	private String productName;
	private String productPrice;
	private String productPicture;
	private String sellerPicture;
	private String sellerName;
	private String sellerAddress;
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(String productPrice) {
		this.productPrice = productPrice;
	}
	public String getProductPicture() {
		return productPicture;
	}
	public void setProductPicture(String productPicture) {
		this.productPicture = productPicture;
	}
	public String getSellerPicture() {
		return sellerPicture;
	}
	public void setSellerPicture(String sellerPicture) {
		this.sellerPicture = sellerPicture;
	}
	public String getSellerName() {
		return sellerName;
	}
	public void setSellerName(String sellerName) {
		this.sellerName = sellerName;
	}
	public String getSellerAddress() {
		return sellerAddress;
	}
	public void setSellerAddress(String sellerAddress) {
		this.sellerAddress = sellerAddress;
	}
	@Override
	public String toString() {
		return "ProductInfo [productId=" + productId + ", productName=" + productName + ", productPrice=" + productPrice
				+ ", productPicture=" + productPicture + ", sellerPicture=" + sellerPicture + ", sellerName="
				+ sellerName + ", sellerAddress=" + sellerAddress + "]";
	}
	
	
}
