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
	
	public List<ProductInfo> getAllProducts() {
		System.out.println("getAllProducts");
		List<ProductInfo> productInfos = new ArrayList<ProductInfo>();
		try {
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery("select * from product_info");
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
}
