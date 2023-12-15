package ar.com.integrador.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class AdministradorDeConexiones {

	public static Connection getConnection() {
		String hosts = "localhost";  // 127.0.0.1
		String port = "3306";
		String password = "";
		String username = "root" ;
		String nombredb = "integrador_cac";
		
		String driveClassName = "com.mysql.cj.jdbc.Driver";
		Connection connection ;
		try {
			Class.forName(driveClassName);
			String url ="jdbc:mysql://"+hosts+":"+port+"/"+nombredb+"?serverTimeZone=UTC&useSSL=false";
			connection = DriverManager.getConnection(url, username, password);
		}
		catch(Exception e){
			connection = null;
		}
		return connection;
	}
}