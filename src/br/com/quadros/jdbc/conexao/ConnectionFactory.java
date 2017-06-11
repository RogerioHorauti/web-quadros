package br.com.quadros.jdbc.conexao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
	private static final String url = "jdbc:mysql://localhost/quadros";
	private static final String user = "root";
	private static final String password = "root";
	 
	public Connection getConnection() {
		
		Connection con = null;
	
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, user, password);
			if (con != null) { 
	        	System.out.println("Conectado com sucesso!"); 
	        } else { 
	        	System.out.println("Nao foi possivel realizar conexao"); 
	        } 
		}
		catch (ClassNotFoundException e1) 
		{
			System.out.println("Erro Class.forName");
		}
		catch (SQLException e) 
		{
			System.out.println("Erro ao conectar com o banco");			
		}
		return con;
	}
}
