package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import util.DbUtil;

public class LoginDao {
	private Connection connection;
	
	public LoginDao() {
		connection = DbUtil.getConnection();
	}
	
	public int haveUserInfo(String user_name, String user_password) {
		System.out.println("haveUserInfo");
		int i = 0;
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("SELECT DISTINCT IF(EXISTS(SELECT * FROM user_info WHERE user_name= ? AND user_password = ?),1,0) AS a FROM user_info;");
			preparedStatement.setString(1, user_name);
			preparedStatement.setString(2, user_password);
			ResultSet rs = preparedStatement.executeQuery();
			if (rs.next()) {
				i = rs.getInt("a");
			}
			System.out.println("a" + rs.getInt("a"));
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return i;
	}
}
