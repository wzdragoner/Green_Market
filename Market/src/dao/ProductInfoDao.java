package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.sun.org.apache.regexp.internal.recompile;
import com.sun.org.apache.xml.internal.security.keys.keyresolver.implementations.RSAKeyValueResolver;

import model.ProductInfo;
import model.UserInfo;
import util.DbUtil;

public class ProductInfoDao {
	private Connection connection;

	public ProductInfoDao() {
		connection = DbUtil.getConnection();
	}
	//getAllProductsByType
	public List<ProductInfo> getAllProductsByType(String product_type) {
		System.out.println("getAllProductsByType");
		List<ProductInfo> productInfos = new ArrayList<ProductInfo>();
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("select * from product_info where product_type = ?");
			preparedStatement.setString(1, product_type);
			ResultSet rs = preparedStatement.executeQuery();

			while (rs.next()) {
				ProductInfo productInfo = new ProductInfo();
				productInfo.setProductId(rs.getInt(1));
				productInfo.setProductName(rs.getString(2));
				productInfo.setProductPicture(rs.getString(4));
				productInfo.setProductPrice(rs.getString(3));
				productInfo.setSellerPicture(rs.getString(5));
				productInfo.setSellerAddress(rs.getString(7));
				productInfo.setSellerName(rs.getString(6));
				productInfo.setProductType(rs.getString(9));
				productInfos.add(productInfo);
			}

		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		System.out.println(productInfos);
		return productInfos;
	}

	//getAllProducts
	public List<ProductInfo> getAllProducts() {
		System.out.println("getAllProducts");
		List<ProductInfo> productInfos = new ArrayList<ProductInfo>();
		try {
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery("select * from product_info;");
			while (rs.next()) {
				ProductInfo productInfo = new ProductInfo();
				productInfo.setProductId(rs.getInt(1));
				productInfo.setProductName(rs.getString(2));
				productInfo.setProductPicture(rs.getString(4));
				productInfo.setProductPrice(rs.getString(3));
				productInfo.setSellerPicture(rs.getString(5));
				productInfo.setSellerAddress(rs.getString(7));
				productInfo.setSellerName(rs.getString(6));
				productInfo.setProductType(rs.getString(9));
				productInfos.add(productInfo);
			}

		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		System.out.println(productInfos);
		return productInfos;
	}

	//getLatestProducts
	public List<ProductInfo> getLatestProducts() {
		System.out.println("getLatestProducts");
		List<ProductInfo> productInfos = new ArrayList<ProductInfo>();
		try {
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery("SELECT * FROM `product_info` ORDER BY product_id desc;");
			while (rs.next()) {
				ProductInfo productInfo = new ProductInfo();

				productInfo.setProductId(rs.getInt(1));
				productInfo.setProductName(rs.getString(2));
				productInfo.setProductPicture(rs.getString(4));
				productInfo.setProductPrice(rs.getString(3));
				productInfo.setSellerPicture(rs.getString(5));
				productInfo.setSellerAddress(rs.getString(7));
				productInfo.setSellerName(rs.getString(6));
				productInfos.add(productInfo);
			}

		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		System.out.println(productInfos);
		return productInfos;
	}
	//randomGetAllProducts
	public List<ProductInfo> randomGetAllProducts() {
		System.out.println("randomGetAllProducts");
		List<ProductInfo> productInfos = new ArrayList<ProductInfo>();
		try {
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery("SELECT * FROM product_info ORDER BY RAND();");
			while (rs.next()) {
				ProductInfo productInfo = new ProductInfo();
				productInfo.setProductId(rs.getInt(1));
				productInfo.setProductName(rs.getString(2));
				productInfo.setProductPicture(rs.getString(4));
				productInfo.setProductPrice(rs.getString(3));
				productInfo.setSellerPicture(rs.getString(5));
				productInfo.setSellerAddress(rs.getString(7));
				productInfo.setSellerName(rs.getString(6));
				productInfos.add(productInfo);
			}

		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		System.out.println(productInfos);
		return productInfos;
	}
	
	//getProductInfoById
	public ProductInfo getProductInfoById(int product_id) {
		System.out.println("getProductInfoById");
		ProductInfo productInfo = new ProductInfo();
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(
					"select * from product_info where product_id = ?;");
			preparedStatement.setInt(1, product_id);
			ResultSet rs = preparedStatement.executeQuery();
			while (rs.next()) {
				productInfo.setProductId(rs.getInt(1));
				productInfo.setProductName(rs.getString(2));
				productInfo.setProductPicture(rs.getString(4));
				productInfo.setProductPrice(rs.getString(3));
				productInfo.setSellerPicture(rs.getString(5));
				productInfo.setSellerAddress(rs.getString(7));
				productInfo.setSellerName(rs.getString(6));
				productInfo.setProductDescription(rs.getString(10));
			}
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return productInfo;
	}
	
	public void addProductInfo(ProductInfo productInfo) {
		System.out.println("addProductInfo");
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(
					"insert into product_info(product_name, product_price, product_picture, product_type, product_info) values (?, ?, ?, ?, ?)");
			preparedStatement.setString(1, productInfo.getProductName());
			preparedStatement.setString(2, productInfo.getProductPrice());
			preparedStatement.setString(3, productInfo.getProductPicture());
			preparedStatement.setString(4, productInfo.getProductType());
			System.out.println(productInfo.getProductType());
			preparedStatement.setString(5, productInfo.getProductDescription());
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}