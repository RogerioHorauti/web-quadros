package br.com.quadros.jdbc.javaBeans;

public class Usuario {
	
	private Long idUsuario;
	private String perfil;
	private String nome;
	private String cpf;
	private String rg;
	private String dataNasc;
	private String endereco;
	private String bairro;
	private String telefone;
	private String dataCadastro;
	private String email;
	private String login;
	private String senha;
	private String dataUltimoAgendamento;
	private Long cidades_idCidade;
	public Long getIdUsuario() {
		return idUsuario;
	}
	public void setIdUsuario(Long idUsuario) {
		this.idUsuario = idUsuario;
	}
	public String getPerfil() {
		return perfil;
	}
	public void setPerfil(String perfil) {
		this.perfil = perfil;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCpf() {
		return cpf;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	public String getRg() {
		return rg;
	}
	public void setRg(String rg) {
		this.rg = rg;
	}
	public String getDataNasc() {
		return dataNasc;
	}
	public void setDataNasc(String dataNasc) {
		this.dataNasc = dataNasc;
	}
	public String getEndereco() {
		return endereco;
	}
	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}
	public String getBairro() {
		return bairro;
	}
	public void setBairro(String bairro) {
		this.bairro = bairro;
	}
	public String getTelefone() {
		return telefone;
	}
	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	public String getDataCadastro() {
		return dataCadastro;
	}
	public void setDataCadastro(String dataCadastro) {
		this.dataCadastro = dataCadastro;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public String getDataUltimoAgendamento() {
		return dataUltimoAgendamento;
	}
	public void setDataUltimoAgendamento(String dataUltimoAgendamento) {
		this.dataUltimoAgendamento = dataUltimoAgendamento;
	}
	public Long getCidades_idCidade() {
		return cidades_idCidade;
	}
	public void setCidades_idCidade(Long cidades_idCidade) {
		this.cidades_idCidade = cidades_idCidade;
	}
	
}
