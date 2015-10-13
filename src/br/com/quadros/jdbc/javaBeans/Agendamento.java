package br.com.quadros.jdbc.javaBeans;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class Agendamento {
	
	private Long idAgendamento;
	@NotNull @Size(min=1)
	private String data;
	@NotNull @Size(min=1)
	private String hora;
	private String status;
	private String obs;
	private Long produtos_idProduto;
	private Long usuarios_idUsuario;
	private Long usuarios_cidades_idCidade;
	public Long getIdAgendamento() {
		return idAgendamento;
	}
	public void setIdAgendamento(Long idAgendamento) {
		this.idAgendamento = idAgendamento;
	}
	
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public String getHora() {
		return hora;
	}
	public void setHora(String hora) {
		this.hora = hora;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getObs() {
		return obs;
	}
	public void setObs(String obs) {
		this.obs = obs;
	}
	public Long getProdutos_idProduto() {
		return produtos_idProduto;
	}
	public void setProdutos_idProduto(Long produtos_idProduto) {
		this.produtos_idProduto = produtos_idProduto;
	}
	public Long getUsuarios_idUsuario() {
		return usuarios_idUsuario;
	}
	public void setUsuarios_idUsuario(Long usuarios_idUsuario) {
		this.usuarios_idUsuario = usuarios_idUsuario;
	}
	public Long getUsuarios_cidades_idCidade() {
		return usuarios_cidades_idCidade;
	}
	public void setUsuarios_cidades_idCidade(Long usuarios_cidades_idCidade) {
		this.usuarios_cidades_idCidade = usuarios_cidades_idCidade;
	}
	
	
	
}
