package br.com.quadros.jdbc.javaBeans;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class Cidade {
	
	private Long idCidade;
	@NotNull @Size(min=1) // validação, não nulo, minimo um caractere
	private String nome;
	@NotNull @Size(min=1)
	private String uf;
	
	public Long getIdCidade() {
		return idCidade;
	}
	public void setIdCidade(Long idCidade) {
		this.idCidade = idCidade;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getUf() {
		return uf;
	}
	public void setUf(String uf) {
		this.uf = uf;
	}
	
	
}
