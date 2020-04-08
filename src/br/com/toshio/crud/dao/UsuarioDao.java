package br.com.toshio.crud.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import br.com.toshio.crud.jdbc.ConnectionFactory;
import br.com.toshio.crud.model.Usuario;

public class UsuarioDao {

	private Connection connection;
	
	public UsuarioDao() {
		try {
			connection = new ConnectionFactory().getConnection();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public boolean existeUser(Usuario usuario) {
		
		boolean existe;
		
		if(usuario == null) {
			throw new IllegalArgumentException("Usuario não pode ser nulo");
		}
		
		try {
			PreparedStatement stmt = this.connection
					.prepareStatement("select * from usuarios where login = ? and senha = ?");
			
			stmt.setString(1, usuario.getLogin());
			stmt.setString(2, usuario.getSenha());
			
			
			ResultSet rs = stmt.executeQuery();
			
			if(rs.next()) {
				usuario.setAvatar(rs.getString("avatar"));
				existe = true;
			} 
			
			else {
				existe = false;
			}
			
			rs.close();
			stmt.close();
			
			
			return existe;
			
		} catch(SQLException e) {
			throw new RuntimeException();
		}
	}
	
}