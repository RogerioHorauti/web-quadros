package br.com.quadros.tarefas;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.quadros.jdbc.dao.CidadeDao;
import br.com.quadros.jdbc.javaBeans.Cidade;

@Controller
public class CidadeController {
	
	private CidadeDao dao;
	
	public CidadeController() {
		this.dao = new CidadeDao();
	}
	@RequestMapping("novaCidade")
	public String formCidade()
	{
		return "cidade/form-cidade";
	}
	@RequestMapping("adicionaCidade")
	public String adiciona(@Valid Cidade cidade, BindingResult result)
	{
		if(result.hasFieldErrors("nome") || result.hasFieldErrors("uf")){
			return "cidade/form-cidade";
		}
		dao.inserirCidade(cidade);
		return "redirect:listaCidade";
	}
	@RequestMapping("listaCidade")
	public String lista(Model model)
	{
		model.addAttribute("cidades", dao.getLista());
		return "cidade/lista-cidade";
	}
	@RequestMapping("removeCidade")
	public String remove(Cidade cidade)
	{
		dao.removerCidade(cidade);
		return "redirect:listaCidade";
	}
	
	@RequestMapping("mostraCidade")
	public String mostra(Long idCidade, Model model)
	{
		model.addAttribute("cidade", dao.buscaPorId(idCidade));
		return"cidade/mostra-cidade";
	}
	
	@RequestMapping("alteraCidade")
	public String altra(Cidade cidade)
	{
		dao.alteraCidade(cidade);
		return "redirect:listaCidade";
	}
}
