package br.com.quadros.tarefas;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.quadros.jdbc.dao.ProdutoDao;
import br.com.quadros.jdbc.javaBeans.Produto;

@Controller
public class ProdutoController {
	private ProdutoDao dao;
	public ProdutoController() {
		dao = new ProdutoDao();
	}
	
	@RequestMapping("/novoProduto")
	public String formProduto()
	{
		return "produto/form-produto";
	}
	
	@RequestMapping("/adicionaProduto")
	public String adiciona(@Valid Produto produto)
	{
		dao.inserirProduto(produto);
		return "redirect:listaProduto";
	}
	
	@RequestMapping("/listaProduto")
	public String lista(Model model)
	{
		model.addAttribute("produtos", dao.getLista());
		return "produto/lista-produto";
	}
	
	@RequestMapping("/removeProduto")
	public String remove(Produto produto)
	{
		dao.removerProduto(produto);
		return "redirect:listaProduto";
	}
	
	@RequestMapping("/mostraProduto")
	public String mostra(Long idProduto, Model model)
	{
		/*System.out.println("altera produto : "+idProduto);*/
		model.addAttribute("produtos", dao.buscaPorId(idProduto));
		return "produto/mostra-produto";
	}
	
	@RequestMapping("/alteraProduto")
	public String altera(Produto produto)
	{	
		/*System.out.println("altera produto : "+produto);*/
		dao.alterarProduto(produto);
		return "redirect:listaProduto";
	}
}
