package src.study.dbconnect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {
	
	public static Connection getConnection() {
		
		Connection conn = null;
		
		String driver = "com.mysql.cj.jdbc.Driver";
		String url ="jdbc:mysql://localhost:3306/mysqltest";
		String user = "root";
		String password = "1234";
		
		try {
			Class.forName(driver);
			System.out.println("Mysql Driver Connect");
			conn = DriverManager.getConnection(url, user, password);
			System.out.println("Databese Connect");
		} catch (ClassNotFoundException e) {
			System.out.println("Mysql Driver Not Found");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("Databese Connect Fail");
			e.printStackTrace();
		}
		
		return conn;
		
	}

}
