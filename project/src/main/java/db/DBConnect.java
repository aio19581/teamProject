package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBConnect {
	
	static String driver = "org.mariadb.jdbc.Driver";
	static String jdbcUrl = "jdbc:mariadb://2001.270.3.1:3070/project";
	static String dbID = "root";
	static String dbPW = "1234";
	
	public static Connection getConnection() throws ClassNotFoundException, SQLException {	
		
		Class.forName(driver);
		return DriverManager.getConnection(jdbcUrl,dbID,dbPW);
		
	}
	
}
