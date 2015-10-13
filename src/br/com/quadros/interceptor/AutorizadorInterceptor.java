package br.com.quadros.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

// Esta classe � respons�vel por interceptar as a��es do controller
public class AutorizadorInterceptor extends HandlerInterceptorAdapter
{
	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object controller) throws Exception {
		
		String uri = request.getRequestURI();
		// S� esses m�todos ficar�o acess�veis
		if(uri.endsWith("listaProduto") || uri.endsWith("index") || uri.endsWith("novoUsuario") || uri.endsWith("dev") || uri.endsWith("formLogin") || uri.endsWith("efetuarLogin") || uri.contains("resources"))
		{
			return true;
		}
		// Se existir um usuario logado, retorna true
		if(request.getSession().getAttribute("usuarioLogado") != null)
		{
			return true;
		}
		//Sen�o retorna para o formulario de login
		response.sendRedirect("formLogin");
		return false;
	}

}
