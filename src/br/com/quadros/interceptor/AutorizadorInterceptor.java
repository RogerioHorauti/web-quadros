package br.com.quadros.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

// Esta classe é responsável por interceptar as ações do controller
public class AutorizadorInterceptor extends HandlerInterceptorAdapter
{
	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object controller) throws Exception {
		
		String uri = request.getRequestURI();
		// Só esses métodos ficarão acessíveis
		if(uri.endsWith("listaProduto") || uri.endsWith("index") || uri.endsWith("novoUsuario") || uri.endsWith("dev") || uri.endsWith("formLogin") || uri.endsWith("efetuarLogin") || uri.contains("resources"))
		{
			return true;
		}
		// Se existir um usuario logado, retorna true
		if(request.getSession().getAttribute("usuarioLogado") != null)
		{
			return true;
		}
		//Senão retorna para o formulario de login
		response.sendRedirect("formLogin");
		return false;
	}

}
