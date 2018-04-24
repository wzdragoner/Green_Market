import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import com.sun.corba.se.impl.encoding.TypeCodeReader;

public class MyDBUtil {
	public static final String DBDRIVER = "com.mysql.jdbc.Driver";
	public static final String DBURL = "jdbc:mysql://localhost:3306/haha";
	public static final String DBUSER = "root";
    public static final String DBPASS = "wz950626";
    static Connection conn;
    
    //Connect to DB
    public static Connection connectDB() {
    	try {
    		Class.forName(DBDRIVER);
    	}
    	catch (ClassNotFoundException e) {
			// TODO: handle exception
    		e.printStackTrace();
		}
    	try {
    		conn = DriverManager.getConnection(DBURL, DBUSER, DBPASS);
    	}
    	catch (SQLException e) {
			// TODO: handle exception
    		e.printStackTrace();
    		return null;
		}
    	return conn;
    }
    
    //Close DB
    public static void closeDB() {
    	try {
    		conn.close();
    	}
    	catch (SQLException e) {
			// TODO: handle exception
    		e.printStackTrace();
		}
    }

	public static Connection connetDB() {
		// TODO Auto-generated method stub
		return null;
	}
}
