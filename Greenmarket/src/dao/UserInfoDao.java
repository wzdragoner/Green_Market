package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.sun.org.apache.xml.internal.security.keys.keyresolver.implementations.RSAKeyValueResolver;

import model.UserInfo;
import util.DbUtil;

public class UserInfoDao {
	private Connection connection;

	public UserInfoDao() {
		connection = DbUtil.getConnection();
	}

	// addUserInfo
	public void addUserInfo(UserInfo userInfo) {
		System.out.println("addUserInfo");

		try {
			PreparedStatement preparedStatement = connection.prepareStatement(
					"insert into user_info(user_name, user_password, user_mail, user_add, user_tel) values (?, ?, ?, ?, ?)");
			preparedStatement.setString(1, userInfo.getUserName());
			preparedStatement.setString(2, userInfo.getUserPassword());
			preparedStatement.setString(3, userInfo.getUserMail());
			preparedStatement.setString(4, userInfo.getUserAdd());
			preparedStatement.setString(5, userInfo.getUserTel());
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// deleteUserInfo

	public void deleteUserInfo(int user_id) {
		System.out.println("deleteUserInfo");

		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("delete from user_info where user_id = ?");
			preparedStatement.setInt(1, user_id);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	// updateUserInfo
	public void updateUserInfo(UserInfo userInfo) {
		System.out.println("updateUserInfo");

		try {
			PreparedStatement preparedStatement = connection.prepareStatement(
					"update user_info set user_name = ?, user_password = ?, user_mail = ?, user_add = ?, user_tel = ?"
							+ "where user_id=?");
			preparedStatement.setString(1, userInfo.getUserName());
			preparedStatement.setString(2, userInfo.getUserPassword());
			preparedStatement.setString(3, userInfo.getUserMail());
			preparedStatement.setString(4, userInfo.getUserAdd());
			preparedStatement.setString(5, userInfo.getUserTel());
			preparedStatement.setInt(6, userInfo.getUserId());
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	// getAllUserInfo
	public List<UserInfo> getAllUsers() {
		System.out.println("getAllUsers");

		List<UserInfo> userInfos = new ArrayList<UserInfo>();
		try {
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery("select * from user_info");
			while (rs.next()) {
				UserInfo userInfo = new UserInfo();
				userInfo.setUserId(rs.getInt(1));
				userInfo.setUserName(rs.getString(2));
				userInfo.setUserPassword(rs.getString(3));
				userInfo.setUserMail(rs.getString(4));
				userInfo.setUserAdd(rs.getString(5));
				userInfo.setUserTel(rs.getString(6));
				userInfos.add(userInfo);

			}
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return userInfos;

	}

	// getUserInfoById
	public UserInfo getUserInfoById(int user_id) {
		System.out.println("getUserInfoById");

		UserInfo userInfo = new UserInfo();
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("select * from user_info where user_id = ?");
			preparedStatement.setInt(1, user_id);
			ResultSet rs = preparedStatement.executeQuery();
			if (rs.next()) {
				userInfo.setUserId(rs.getInt("user_id"));
				userInfo.setUserName(rs.getString("user_name"));
				userInfo.setUserPassword(rs.getString("user_password"));
				userInfo.setUserMail(rs.getString("user_mail"));
				userInfo.setUserAdd(rs.getString("user_add"));
				userInfo.setUserTel(rs.getString("user_tel"));
			}
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return userInfo;
	}
}
