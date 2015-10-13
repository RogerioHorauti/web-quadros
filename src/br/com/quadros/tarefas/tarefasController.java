package br.com.quadros.tarefas;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class tarefasController {
	
	@RequestMapping("/dev")
	public String formDev()
	{
		return"/form-desenvolvedores";
	}
	
	@RequestMapping("index")
	public String index()
	{
		return "index";
	}
	
	@RequestMapping("/")
	public String raiz(){
		return "index";
	}
	
	@RequestMapping("/listaProduto2")
	public String listaProduto2(){
		return "produto/lista-produto2";
	}
}
