package br.com.quadros.jdbc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.quadros.jdbc.conexao.ConnectionFactory;
import br.com.quadros.jdbc.javaBeans.Cidade;

public class CidadeDao {
		
	public boolean inserirCidade(Cidade cidade) {
		boolean status = false;
		String sql = "INSERT INTO cidades (nome, uf) VALUES (?, ?)";
		PreparedStatement ps = null;
		try(Connection con = new ConnectionFactory().getConnection())
		{
			ps = con.prepareStatement(sql);
			ps.setString(1, cidade.getNome());
			ps.setString(2, cidade.getUf());
			if(ps.executeUpdate() != 0) {
				status = true;
			}
			ps.close();
		}
		catch (SQLException e) 
		{
			System.out.println("Erro ao inserir a cidade\n"+e);
		}
		return status;
		}
	
	public List<Cidade> getLista() 
	{
		String sql = "SELECT * FROM cidades";
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<Cidade> cidades = null;
		try(Connection con = new ConnectionFactory().getConnection())
		{
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			cidades = new ArrayList<>();
			while(rs.next())
			{
				Cidade cidade = new Cidade();
				cidade.setIdCidade(rs.getLong("idCidade"));
				cidade.setNome(rs.getString("nome"));
				cidade.setUf(rs.getString("uf"));
				cidades.add(cidade);
			}
			rs.close();
			ps.close();
		}
		catch (SQLException e) 
		{
			System.out.println("Erro ao listar as cidades\n"+e);
		}
		return cidades;
	}
	
	public List<Cidade> buscaPorId(Long id)
	{
		String sql = "SELECT * FROM cidades WHERE idCidade="+id;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<Cidade> cidades = null;
		try(Connection con = new ConnectionFactory().getConnection())
		{
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			cidades = new ArrayList<>();
			while(rs.next())
			{
				Cidade cidade = new Cidade();
				cidade.setIdCidade(rs.getLong("idCidade"));
				cidade.setNome(rs.getString("nome"));
				cidade.setUf(rs.getString("uf"));
				cidades.add(cidade);
			}
			rs.close();
			ps.close();
		}
		catch (SQLException e) 
		{
			System.out.println("Erro ao listar as cidades\n"+e);
		}
		return cidades;
		
	}
	
	public boolean alteraCidade(Cidade cidade) {
		boolean status = false;
		String sql = "UPDATE cidades SET nome=?, uf=? where idCidade=?";
		PreparedStatement  ps = null;
		try(Connection con = new ConnectionFactory().getConnection())
		{
			ps = con.prepareStatement(sql);
			ps.setString(1, cidade.getNome());
			ps.setString(2, cidade.getUf());
			ps.setLong(3, cidade.getIdCidade());
			if(ps.executeUpdate() != 0) {
				status = true;
			}
			ps.close();
		}
		catch (SQLException e) 
		{
			System.out.println("Erro ao alterar a cidade\n"+e);
		}
		return status;
	}
	
	public boolean removerCidade(Cidade cidade) {
		boolean status = false;
		PreparedStatement ps = null;
		try(Connection con = new ConnectionFactory().getConnection())
		{
			ps = con.prepareStatement("delete FROM cidades WHERE idCidade=?");
			ps.setLong(1,cidade.getIdCidade());
			if(ps.executeUpdate() != 0) {
				status = true;
			}
			ps.close();
		}
		catch (SQLException e) 
		{
			System.out.println("Erro ao remover a cidade\n"+e);
		}
		return status;
	}

}
