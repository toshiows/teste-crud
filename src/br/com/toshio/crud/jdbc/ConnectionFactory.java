package  br.com.toshio.crud.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
	
	public Connection getConnection() throws SQLException {
		System.out.println("Conectando...");
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch(ClassNotFoundException e) {
			throw new RuntimeException(e);
		}
		
		return DriverManager.getConnection("jdbc:mysql://localhost/loja",
				"root", "");
	}
}
