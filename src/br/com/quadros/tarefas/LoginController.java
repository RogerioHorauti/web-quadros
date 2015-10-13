package br.com.quadros.tarefas;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.quadros.jdbc.dao.UsuarioDao;
import br.com.quadros.jdbc.javaBeans.Usuario;

@Controller
public class LoginController {
	
	@RequestMapping("formLogin")
	public String form()
	{
		return "login/form-login";
	}
	
	@RequestMapping("/efetuarLogin")
	public String efetuarUsuario(Usuario usuario, HttpSession session)
	{
		UsuarioDao dao = new UsuarioDao();
		Usuario user = new Usuario();
		if(dao.existeUsuario(usuario))
		{
			user = dao.logado(usuario);
			session.setAttribute("usuarioLogado",user);
			if(user.getPerfil().equals("1")){
				return "redirect:relatorioDeAgendamento";
			}else if(user.getPerfil().equals("2"))
			{
				return "redirect:listaProduto";
			}
		}
		return "redirect:formLogin";
	}
	
	@RequestMapping("mostraUsuario")
	public String mostra(Long idUsuario, Model model)
	{
		UsuarioDao dao = new UsuarioDao();
		model.addAttribute("usuarios", dao.buscaPorId(idUsuario));
		return "usuario/mostra-usuario";
	}
	
	@RequestMapping("logout")
	public String logout(HttpSession session)
	{
		session.invalidate();
		return "redirect:";
	}
}
