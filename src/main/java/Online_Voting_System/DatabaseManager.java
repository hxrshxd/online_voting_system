package Online_Voting_System;

import java.sql.*;
/**
 * Servlet implementation class DatabaseManager
 */
public class DatabaseManager {
	public Connection getConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinevotingdb","root","Y1012Jqkhkp");
			return conn;
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			return null;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

}
