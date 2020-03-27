package br.com.toshio.crud.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import br.com.toshio.crud.jdbc.ConnectionFactory;
import br.com.toshio.crud.model.Contato;

public class ContatoDao {

	private Connection connection;

	public ContatoDao() {
		try {
			this.connection = new ConnectionFactory().getConnection();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}

	public void adiciona(Contato contato) {
		String sql = "insert into contatos " + "(nome,email,endereco,dataNascimento)" + "values (?,?,?,?)";

		try {
			PreparedStatement stmt = connection.prepareStatement(sql);

			stmt.setString(1, contato.getNome());
			stmt.setString(2, contato.getEmail());
			stmt.setString(3, contato.getEndereco());
			stmt.setDate(4, new Date(contato.getDataNascimento().getTimeInMillis()));

			stmt.execute();
			stmt.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void remove(Contato contato) {
		String sql = "delete from contatos where id=?";

		try {
			PreparedStatement stmt = connection.prepareStatement(sql);

			stmt.setLong(1, contato.getId());

			stmt.execute();
			stmt.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public List<Contato> lista() {

		String sql = "select * from contatos";

		try {

			List<Contato> contatos = new ArrayList<>();

			PreparedStatement stmt = this.connection.prepareStatement(sql);

			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				Contato contato = new Contato();

				contato.setId(rs.getLong("id"));
				contato.setNome(rs.getString("nome"));
				contato.setEmail(rs.getString("email"));
				contato.setEndereco(rs.getString("endereco"));

				Calendar data = Calendar.getInstance();
				data.setTime(rs.getDate("dataNascimento"));

				contato.setDataNascimento(data);

				contatos.add(contato);
			}

			rs.close();
			stmt.close();

			return contatos;

		} catch (SQLException e) {
			throw new RuntimeException(e);
		}

	}
	
	public void altera(Contato contato) {
		String sql = "update contatos set "
				+ "nome = ?,"
				+ "email = ?,"
				+ "endereco = ?,"
				+ "dataNascimento = ?"
				+ " where id = ?";
		
		try {
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setString(1, contato.getNome());
			stmt.setString(2, contato.getEmail());
			stmt.setString(3, contato.getEndereco());
			stmt.setDate(4, new Date(contato.getDataNascimento().getTimeInMillis()));
			stmt.setLong(5, contato.getId());
			
			stmt.execute();
			stmt.close();
		
		}catch(SQLException e) {
			throw new RuntimeException(e);
			
		}
		
	}
	
	public Contato buscaId(Long id) {
		
		if(id == null) {
			throw new IllegalStateException("ID não deve ser nulo.");
		}
		
		try {
			PreparedStatement stmt = connection.prepareStatement("select * from contatos where id = ?");
			
			stmt.setLong(1, id);
			
			ResultSet rs = stmt.executeQuery();
			
			if(rs.next()) {
				Contato contato = new Contato();
				
				contato.setId(rs.getLong("id"));
				contato.setNome(rs.getString("nome"));
				contato.setEmail(rs.getString("email"));
				contato.setEndereco(rs.getString("endereco"));
				
				Calendar data = Calendar.getInstance();
				data.setTime(rs.getDate("dataNascimento"));
				contato.setDataNascimento(data);
				
				return contato;
			}
			
			rs.close();
			stmt.close();
			
			return null;
			
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
		
	}
}
