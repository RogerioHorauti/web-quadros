package br.com.quadros.jdbc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.quadros.jdbc.conexao.ConnectionFactory;
import br.com.quadros.jdbc.javaBeans.Produto;


public class ProdutoDao {
	
	public boolean inserirProduto(Produto produto)
	{
		boolean status = false;
		String sql = "INSERT INTO produtos (descricao, valor, qtd, tipo, obs, imagem) VALUES (?, ?, ?, ?, ?, ?)";	
		PreparedStatement ps = null;
			try(Connection con = new ConnectionFactory().getConnection())
			{
				ps = con.prepareStatement(sql);
				ps.setString(1, produto.getDescricao());
				ps.setDouble(2, produto.getValor());
				ps.setInt(3, produto.getQtd());
				ps.setString(4, produto.getTipo());
				ps.setString(5, produto.getObs());
				ps.setString(6, produto.getImagem());
				if(ps.executeUpdate() != 0) {
					status = true;
				}
				ps.close();
			}
			catch (SQLException e) 
			{
				System.out.println("Erro ao inserir o produto\n"+e);
			}
		return status;
		}
		
	public List<Produto> getLista() {
		String sql = "SELECT * FROM produtos";
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<Produto> listaDeProdutos = null;
		try(Connection con = new ConnectionFactory().getConnection())
		{
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			listaDeProdutos = new ArrayList<Produto>();
			while(rs.next()){
				Produto produto = new Produto();
				produto.setIdProduto(rs.getLong("idProduto"));
				produto.setDescricao(rs.getString("descricao"));
				produto.setValor(rs.getDouble("valor"));
				produto.setQtd(rs.getInt("qtd"));
				produto.setTipo(rs.getString("tipo"));
				produto.setObs(rs.getString("obs"));
				produto.setImagem(rs.getString("imagem"));
				listaDeProdutos.add(produto);
			}
			ps.close();
		}
		catch (SQLException e) 
		{
			System.out.println("Erro ao listar os produtos\n"+e);
		}
		return listaDeProdutos;
	}
	
	public List<Produto> buscaPorId(Long id)
	{
		String sql = "SELECT * FROM produtos WHERE idProduto="+id;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<Produto> listaDeProdutos = null;
		try(Connection con = new ConnectionFactory().getConnection())
		{
			listaDeProdutos = new ArrayList<Produto>();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();			
			while(rs.next()){
				Produto produto = new Produto();
				produto.setIdProduto(rs.getLong("idProduto"));
				produto.setDescricao(rs.getString("descricao"));
				produto.setValor(rs.getDouble("valor"));
				produto.setQtd(rs.getInt("qtd"));
				produto.setTipo(rs.getString("tipo"));
				produto.setObs(rs.getString("obs"));
				produto.setImagem(rs.getString("imagem"));
				listaDeProdutos.add(produto);
			}
			ps.close();
		}
		catch (SQLException e) 
		{
			System.out.println("Erro ao listar os produtos por id\n"+e);
		}
		System.out.println("ProdutoDao busca por id : "+listaDeProdutos);
		return listaDeProdutos;
	}
	
	public boolean alterarProduto(Produto produto) {
		boolean status = false;
		String sql = "UPDATE produtos SET descricao=?, valor=?, qtd=?, tipo=?, obs=?, imagem=? where idProduto=?";
		PreparedStatement  ps = null;
		try(Connection con = new ConnectionFactory().getConnection())
		{
			ps = con.prepareStatement(sql);
			ps.setString(1, produto.getDescricao());
			ps.setDouble(2, produto.getValor());
			ps.setInt(3, produto.getQtd());
			ps.setString(4, produto.getTipo());
			ps.setString(5, produto.getObs());
			ps.setString(6, produto.getImagem());
			ps.setLong(7, produto.getIdProduto());
			if(ps.executeUpdate() != 0) {
				status = true;
			}
			ps.close();
		}
		catch (SQLException e) 
		{
			System.out.println("Erro ao atualizar os produtos\n"+e);			
		}
		return status;	
	}
	
	public boolean removerProduto(Produto produto) {
		boolean status = false;
		PreparedStatement ps = null;
		try(Connection con = new ConnectionFactory().getConnection())
		{
			ps = con.prepareStatement("delete FROM produtos WHERE idProduto=?");
			ps.setLong(1, produto.getIdProduto());
			if(ps.executeUpdate() != 0) {
				status = true;
			}
			ps.close();
		}
		catch (SQLException e) 
		{
			System.out.println("Erro ao deletar o produto");
		}
		return status;
	}
	
}


