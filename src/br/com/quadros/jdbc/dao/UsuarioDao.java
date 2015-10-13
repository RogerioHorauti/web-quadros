package br.com.quadros.jdbc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.quadros.jdbc.conexao.ConnectionFactory;
import br.com.quadros.jdbc.javaBeans.Usuario;

public class UsuarioDao {
	
	public boolean inserirUsuario(Usuario usuario) {
		boolean status = false;
		String sql = "INSERT INTO usuarios (perfil, nome, cpf, rg, dataNasc, endereco, bairro, telefone, dataCadastro, email,"
				+" login, senha, dataUltimoAgendamento, cidades_idCidade) "
				+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		PreparedStatement ps = null;
		try(Connection con = new ConnectionFactory().getConnection())
		{
			ps = con.prepareStatement(sql);
			ps.setString(1, usuario.getPerfil());
			ps.setString(2, usuario.getNome());
			ps.setString(3, usuario.getCpf());
			ps.setString(4, usuario.getRg());
			ps.setString(5, usuario.getDataNasc());
			ps.setString(6, usuario.getEndereco());
			ps.setString(7, usuario.getBairro());
			ps.setString(8, usuario.getTelefone());
			ps.setString(9, usuario.getDataCadastro());
			ps.setString(10, usuario.getEmail());
			ps.setString(11, usuario.getLogin());
			ps.setString(12, usuario.getSenha());
			ps.setString(13, usuario.getDataUltimoAgendamento());
			ps.setLong(14, usuario.getCidades_idCidade());
			if(ps.executeUpdate() != 0) {
				status = true;
			}
			ps.close();
		}
		catch (SQLException e) 
		{
			System.out.println("Erro ao inserir usuário\n"+e);
		}
		return status;
		}
	
	public List<Usuario> getLista() 
	{
		String sql = "SELECT * FROM usuarios";
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<Usuario> listaDeUsuarios = null;
		try(Connection con = new ConnectionFactory().getConnection())
		{
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			listaDeUsuarios = new ArrayList<Usuario>();
			while(rs.next())
			{
				Usuario usuario = new Usuario();
				usuario.setIdUsuario(rs.getLong("idUsuario"));
				usuario.setPerfil(rs.getString("perfil"));
				usuario.setNome(rs.getString("nome"));
				usuario.setCpf(rs.getString("cpf"));
				usuario.setRg(rs.getString("rg"));
				usuario.setDataNasc(rs.getString("dataNasc"));
				usuario.setEndereco(rs.getString("endereco"));
				usuario.setBairro(rs.getString("bairro"));
				usuario.setTelefone(rs.getString("telefone"));
				usuario.setDataCadastro(rs.getString("dataCadastro"));
				usuario.setEmail(rs.getString("email"));
				usuario.setLogin(rs.getString("login"));
				usuario.setSenha(rs.getString("senha"));
				usuario.setDataUltimoAgendamento(rs.getString("dataUltimoAgendamento"));
				usuario.setCidades_idCidade(rs.getLong("cidades_idCidade"));
				listaDeUsuarios.add(usuario);		
			}
			ps.close();
		}
		catch (SQLException e) 
		{
			System.out.println("Erro ao listar usuário\n"+e);
		}
		return listaDeUsuarios;
	}
	
	public List<Usuario> buscaPorId(Long id)
	{
		String sql = "SELECT * FROM usuarios WHERE idUsuario="+id;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<Usuario> listaDeUsuarios = null;
		try(Connection con = new ConnectionFactory().getConnection())
		{
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			listaDeUsuarios = new ArrayList<Usuario>();
			while(rs.next())
			{
				Usuario usuario = new Usuario();
				usuario.setIdUsuario(rs.getLong("idUsuario"));
				usuario.setPerfil(rs.getString("perfil"));
				usuario.setNome(rs.getString("nome"));
				usuario.setCpf(rs.getString("cpf"));
				usuario.setRg(rs.getString("rg"));
				usuario.setDataNasc(rs.getString("dataNasc"));
				usuario.setEndereco(rs.getString("endereco"));
				usuario.setBairro(rs.getString("bairro"));
				usuario.setTelefone(rs.getString("telefone"));
				usuario.setDataCadastro(rs.getString("dataCadastro"));
				usuario.setEmail(rs.getString("email"));
				usuario.setLogin(rs.getString("login"));
				usuario.setSenha(rs.getString("senha"));
				usuario.setDataUltimoAgendamento(rs.getString("dataUltimoAgendamento"));
				usuario.setCidades_idCidade(rs.getLong("cidades_idCidade"));
				listaDeUsuarios.add(usuario);
			}
			ps.close();
		}
		catch (SQLException e) 
		{
			System.out.println("Erro ao buscar usuario por id\n"+e);
		}
		return listaDeUsuarios;
	}
	
	public boolean existeUsuario(Usuario usuario)
	{
		boolean logado = false;
		String sql = "SELECT * FROM usuarios WHERE login='"+usuario.getLogin()+"'and senha='"+usuario.getSenha()+"'";
		PreparedStatement ps = null;
		ResultSet rs = null;
		try(Connection con = new ConnectionFactory().getConnection()) 
		{
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()){
				logado = true;
			}
			ps.close();
			rs.close();
		} catch (SQLException e) {
			System.out.println("Erro existeUsuario");
		}
		return logado;
	}
	
	public Usuario logado(Usuario usuario)
	{
		String sql = "SELECT * FROM usuarios WHERE login='"+usuario.getLogin()+"'and senha='"+usuario.getSenha()+"'";
		PreparedStatement ps = null;
		ResultSet rs = null;
		Usuario user = new Usuario();
		try(Connection con = new ConnectionFactory().getConnection()) 
		{
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			rs.next();
			user.setIdUsuario(rs.getLong("idUsuario"));
			user.setPerfil(rs.getString("perfil"));
			user.setNome(rs.getString("nome"));
			user.setCpf(rs.getString("cpf"));
			user.setRg(rs.getString("rg"));
			user.setDataNasc(rs.getString("dataNasc"));
			user.setEndereco(rs.getString("endereco"));
			user.setBairro(rs.getString("bairro"));
			user.setTelefone(rs.getString("telefone"));
			user.setDataCadastro(rs.getString("dataCadastro"));
			user.setEmail(rs.getString("email"));
			user.setLogin(rs.getString("login"));
			user.setSenha(rs.getString("senha"));
			user.setDataUltimoAgendamento(rs.getString("dataUltimoAgendamento"));
			user.setCidades_idCidade(rs.getLong("cidades_idCidade"));
			ps.close();
			rs.close();
		} catch (SQLException e) {
			System.out.println("Erro logado");
		}
		System.out.println("Logado dao : "+user);
		return user;
	}
	
	public boolean alterarUsuario(Usuario usuario) {
		boolean status = false;
		String sql = "UPDATE usuarios SET perfil=?, nome=?, cpf=?, rg=?, dataNasc=?, endereco=?, bairro=?, telefone=?, "
				  +	 "dataCadastro=?, email=?, login=?, senha=?, dataUltimoAgendamento=?, cidades_idCidade=? where idUsuario=?";
		
		PreparedStatement  ps = null;
		try(Connection con = new ConnectionFactory().getConnection())
		{
			ps = con.prepareStatement(sql);
			ps.setString(1, usuario.getPerfil());
			ps.setString(2, usuario.getNome());
			ps.setString(3, usuario.getCpf());
			ps.setString(4, usuario.getRg());
			ps.setString(5, usuario.getDataNasc());
			ps.setString(6, usuario.getEndereco());
			ps.setString(7, usuario.getBairro());
			ps.setString(8, usuario.getTelefone());
			ps.setString(9, usuario.getDataCadastro());
			ps.setString(10, usuario.getEmail());
			ps.setString(11, usuario.getLogin());
			ps.setString(12, usuario.getSenha());
			ps.setString(13, usuario.getDataUltimoAgendamento());
			ps.setLong(14, usuario.getCidades_idCidade());
			ps.setLong(15, usuario.getIdUsuario());
			if(ps.executeUpdate() != 0) {
				status = true;
			}
			ps.close();
		}
		catch (SQLException e) 
		{
			System.out.println("Erro ao alterar usuário\n"+e);
		}
		return status;
	}
	
	public boolean removerUsuario(Usuario usuario) {
		boolean status = false;
		PreparedStatement ps = null;
		try(Connection con = new ConnectionFactory().getConnection())
		{
			ps = con.prepareStatement("delete FROM usuarios WHERE idUsuario=?");
			ps.setLong(1, usuario.getIdUsuario());
			if(ps.executeUpdate() != 0) {
				status = true;
			}
			ps.close();
		}
		catch (SQLException e) 
		{
			System.out.println("Erro ao remover usuário\n"+e);
		}
		return status;
	}
		
}
