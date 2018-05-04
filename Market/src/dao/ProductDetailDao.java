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
import model.ProductDetail;
import util.DbUtil;

public class ProductDetailDao {
	private Connection connection;

	public ProductDetailDao() {
		connection = DbUtil.getConnection();
	}

	public List<String> getAllProductPicture(int product_id) {
		System.out.println("getAllProductPicture");
		List<String> productPictures = new ArrayList<String>();
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(
					"select product_picture.pp_picture from product_info left join product_picture on product_info.p_picture=product_picture.pp_id where product_info.product_id = ?;");
			preparedStatement.setInt(1, product_id);
			ResultSet rs = preparedStatement.executeQuery();
			while (rs.next()) {
				String productPicture;
				productPicture = rs.getString(1);
				productPictures.add(productPicture);
			}

		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		System.out.println(productPictures);
		return productPictures;
	}

	public List<String> getAllProductInfo(int product_id) {
		System.out.println("getAllProductInfo");
		List<String> productInfos = new ArrayList<String>();
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(
					"select detail_info from product_info left join product_details on product_info.p_picture=product_details.detail_id where product_info.product_id = ?;");
			preparedStatement.setInt(1, product_id);
			ResultSet rs = preparedStatement.executeQuery();
			while (rs.next()) {
				String productInfo;
				productInfo = rs.getString(1);
				productInfos.add(productInfo);
			}

		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		System.out.println(productInfos);
		return productInfos;
	}
}
