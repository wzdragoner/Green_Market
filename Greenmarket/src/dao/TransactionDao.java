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
import model.Transaction;
import util.DbUtil;

public class TransactionDao {
	private Connection connection;

	public TransactionDao() {
		connection = DbUtil.getConnection();
	}

	public List<Transaction> getAllTransaction() {
		System.out.println("getAllTransaction");
		List<Transaction> transactions = new ArrayList<Transaction>();
		try {
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery(
					"select product_name,product_price,product_picture, a.user_name as 'seller_name', b.user_name as 'buyer_name' from transaction inner join product_info on transaction.product_id=product_info.product_id inner join user_info as a on transaction.seller_id=a.user_id inner join user_info as b on transaction.buyer_id=b.user_id;");
			while (rs.next()) {
				Transaction transaction = new Transaction();
				transaction.setProduct_name(rs.getString(1));
				transaction.setProduct_price(rs.getString(2));
				transaction.setProduct_picture(rs.getString(3));
				transaction.setSeller_name(rs.getString(4));
				transaction.setBuyer_name(rs.getString(5));
				transactions.add(transaction);
			}

		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		System.out.println(transactions);
		return transactions;
	}
}
