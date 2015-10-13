package br.com.quadros.tarefas;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.quadros.jdbc.dao.CidadeDao;
import br.com.quadros.jdbc.dao.UsuarioDao;
import br.com.quadros.jdbc.javaBeans.Usuario;

@Controller
public class UsuarioController {
	private UsuarioDao dao;
	public UsuarioController() {
		dao = new UsuarioDao();
	}
	
	@RequestMapping("/novoUsuario")
	public String formCidade(Model model)
	{
		CidadeDao cid = new CidadeDao();
		model.addAttribute("cidades",cid.getLista());
		return "usuario/form-usuario";
	}
	
	@RequestMapping("/adicionaUsuario")
	public String adiciona(@Valid Usuario usuario)
	{
		dao.inserirUsuario(usuario);
		return "redirect:listaUsuario";
	}
	
	@RequestMapping("/listaUsuario")
	public String lista(Model model)
	{
		model.addAttribute("usuarios",dao.getLista());
		return "usuario/lista-usuario";
	}
	
	@RequestMapping("/removeUsuario")
	public String remove(Usuario usuario)
	{
		dao.removerUsuario(usuario);
		return "redirect:listaUsuario";
	}
	
	/*@RequestMapping("/mostraUsuario")
	public String mostra(Long idUsuario, Model model)
	{
		model.addAttribute("usuarios", dao.buscaPorId(idUsuario));
		return "usuario/mostra-usuario";
	}*/
	
	@RequestMapping("/alteraUsuario")
	public String altera(Usuario usuario)
	{
		dao.alterarUsuario(usuario);
		return "redirect:listaUsuario";
	}
}