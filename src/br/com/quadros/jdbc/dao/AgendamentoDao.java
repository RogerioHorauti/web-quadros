package br.com.quadros.jdbc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.quadros.jdbc.conexao.ConnectionFactory;
import br.com.quadros.jdbc.javaBeans.Agendamento;
import br.com.quadros.jdbc.javaBeans.ListaDeAgendamento;

public class AgendamentoDao {
	
	public boolean inserirAgendamento(Agendamento agendamento) 
	{
		boolean status = false;
		String sql = "INSERT INTO agendamentos (data, hora, status, obs, produtos_idProduto, "
				+ "usuarios_idUsuario, usuarios_cidades_idCidade)"
				+ "VALUES (?, ?, ?, ?, ?, ?, ?)";
		PreparedStatement ps = null;
		try(Connection con = new ConnectionFactory().getConnection())
		{
			ps = con.prepareStatement(sql);
			ps.setString(1, agendamento.getData());
			ps.setString(2, agendamento.getHora());
			ps.setString(3, agendamento.getStatus());
			ps.setString(4, agendamento.getObs());
			ps.setLong(5, agendamento.getProdutos_idProduto());
			ps.setLong(6, agendamento.getUsuarios_idUsuario());
			ps.setLong(7, agendamento.getUsuarios_cidades_idCidade());
			if(ps.executeUpdate() != 0) {
				status = true;
			}
			ps.close();	
		}
		catch (SQLException e) 
		{
			System.out.println("DAO - Erro ao inserir o agendamento\n"+e);
		}
		return status;
		}
	
	public List<Agendamento> getLista() 
	{
		String sql = "SELECT * FROM agendamentos";
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<Agendamento> listaDeAgendamentos = null;
		try(Connection con = new ConnectionFactory().getConnection())
		{
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			listaDeAgendamentos = new ArrayList<Agendamento>();
			while(rs.next())
			{
				Agendamento agendamento = new Agendamento();
				agendamento.setIdAgendamento(rs.getLong("idAgendamento"));
				agendamento.setData(rs.getString("data"));
				agendamento.setHora(rs.getString("hora"));
				agendamento.setStatus(rs.getString("status"));
				agendamento.setObs(rs.getString("obs"));
				agendamento.setProdutos_idProduto(rs.getLong("produtos_idProduto"));
				agendamento.setUsuarios_idUsuario(rs.getLong("usuarios_idUsuario"));
				agendamento.setUsuarios_cidades_idCidade(rs.getLong("usuarios_cidades_idCidade"));
				listaDeAgendamentos.add(agendamento);
			}
			ps.close();
		}
		catch (SQLException e) 
		{
			System.out.println("Erro ao listar o agendamento\n"+e);
		}
		return listaDeAgendamentos;
	}
	
	public List<ListaDeAgendamento> listaDeAgendamento() 
	{
		String sql = "SELECT A.nome as cliente, A.telefone, A.email, B.data, B.hora, B.status, C.descricao, C.valor "
				+ "FROM usuarios AS A INNER JOIN agendamentos AS B ON A.idUsuario = B.usuarios_idUsuario "
				+ "inner join produtos as C ON B.produtos_idProduto = C.idProduto ";
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<ListaDeAgendamento> lista = null;
		try(Connection con = new ConnectionFactory().getConnection())
		{
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			lista = new ArrayList<>();
			while(rs.next())
			{
				ListaDeAgendamento listaDeAgendamento = new ListaDeAgendamento();
				listaDeAgendamento.setCliente(rs.getString("cliente"));
				listaDeAgendamento.setTelefone(rs.getString("telefone"));
				listaDeAgendamento.setEmail(rs.getString("email"));
				listaDeAgendamento.setData(rs.getString("data"));
				listaDeAgendamento.setHora(rs.getString("hora"));
				listaDeAgendamento.setStatus(rs.getString("status"));
				listaDeAgendamento.setDescricao(rs.getString("descricao"));
				listaDeAgendamento.setValor(rs.getDouble("valor"));
				lista.add(listaDeAgendamento);
			}
			ps.close();
		}
		catch (SQLException e) 
		{
			System.out.println("Erro ao listar a lista de agendamentos\n"+e);
		}
		return lista;
	}
	
	public List<Agendamento> buscaPorId(Long id)
	{
		String sql = "SELECT * FROM agendamentos WHERE idAgendamento="+id;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<Agendamento> listaDeAgendamentos = null;
		try(Connection con = new ConnectionFactory().getConnection())
		{
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			listaDeAgendamentos = new ArrayList<Agendamento>();
			while(rs.next())
			{
				Agendamento agendamento = new Agendamento();
				agendamento.setIdAgendamento(rs.getLong("idAgendamento"));
				agendamento.setData(rs.getString("data"));
				agendamento.setHora(rs.getString("hora"));
				agendamento.setStatus(rs.getString("status"));
				agendamento.setObs(rs.getString("obs"));
				agendamento.setProdutos_idProduto(rs.getLong("produtos_idProduto"));
				agendamento.setUsuarios_idUsuario(rs.getLong("usuarios_idUsuario"));
				agendamento.setUsuarios_cidades_idCidade(rs.getLong("usuarios_cidades_idCidade"));
				listaDeAgendamentos.add(agendamento);
			}
			ps.close();	
		}
		catch (SQLException e) 
		{
			System.out.println("Erro ao listar o agendamento\n"+e);
		}
		return listaDeAgendamentos;
	}
	
	public boolean alterarAgendamento(Agendamento agendamento) 
	{
		boolean status = false;
		String sql = "UPDATE agendamentos SET data=?, hora=?, status=?, obs=?, produtos_idProduto=?, usuarios_idUsuario=?"
				+ ", usuarios_cidades_idCidade=? where idAgendamento=?";
		
		PreparedStatement  ps = null;
		try(Connection con = new ConnectionFactory().getConnection())
		{
			ps = con.prepareStatement(sql);
			ps.setString(1, agendamento.getData());
			ps.setString(2, agendamento.getHora());
			ps.setString(3, agendamento.getStatus());
			ps.setString(4, agendamento.getObs());
			ps.setLong(7, agendamento.getProdutos_idProduto());
			ps.setLong(5, agendamento.getUsuarios_idUsuario());
			ps.setLong(6, agendamento.getUsuarios_cidades_idCidade());
			ps.setLong(10, agendamento.getIdAgendamento());
			if(ps.executeUpdate() != 0) {
				status = true;
			}
			ps.close();
			
		}
		catch (SQLException e) 
		{
			System.out.println("Erro ao alterar o agendamento\n"+e);
		}
		return status;
	}
	
	public boolean removerAgendamento(Agendamento agendamento) {
		boolean status = false;
		PreparedStatement ps = null;
		try(Connection con = new ConnectionFactory().getConnection())
		{
			ps = con.prepareStatement("delete FROM agendamentos WHERE idAgendamento=?");
			ps.setLong(1, agendamento.getIdAgendamento());
			if(ps.executeUpdate() != 0) {
				status = true;
			}
			ps.close();
		}
		catch (SQLException e) 
		{
			System.out.println("Erro ao remover o agendamento\n"+e);
		}
		return status;
	}
}
