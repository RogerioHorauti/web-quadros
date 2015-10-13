package br.com.quadros.tarefas;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.quadros.jdbc.dao.AgendamentoDao;
import br.com.quadros.jdbc.dao.ProdutoDao;
import br.com.quadros.jdbc.javaBeans.Agendamento;

@Controller
public class AgendamentoController {
	private AgendamentoDao dao;
	public AgendamentoController() {
		dao = new AgendamentoDao();
	}
	
	@RequestMapping("/novoAgendamento")
	public String formCidade()
	{
		return "agendamento/form-agendamento";
	}
	
	@RequestMapping("/agendar")
	public String agendar(Long idProduto, Model model)	{
		ProdutoDao prod = new ProdutoDao();
		model.addAttribute("produtos", prod.buscaPorId(idProduto));
		return "agendamento/form-agendamento";
	}
	
	@RequestMapping("/adicionaAgendamento")
	public String adiciona(Agendamento agendamento)
	{
		dao.inserirAgendamento(agendamento);
		return "redirect:listaProduto";
	}
	
	@RequestMapping("/listaAgendamento")
	public String lista(Model model)
	{
		model.addAttribute("agendamentos",dao.getLista());
		return "agendamento/lista-agendamento";
	}
	@RequestMapping("/relatorioDeAgendamento")
	public String listaDeAgendamento(Model model){
		model.addAttribute("listaDeAgendamentos", dao.listaDeAgendamento());
		return "agendamento/lista-listaDeAgendamento";
		
	}
	@RequestMapping("/removeAgendamento")
	public String remove(Agendamento agendamento)
	{
		dao.removerAgendamento(agendamento);
		return "redirect:listaAgendamento";
	}
	
	@RequestMapping("/mostraAgendamento")
	public String mostra(Long idAgendamento, Model model)
	{
		System.out.println(idAgendamento);
		model.addAttribute("agendamentos", dao.buscaPorId(idAgendamento));
		return "agendamento/mostra-agendamento";
	}
	
	@RequestMapping("/alteraAgendamento")
	public String altera(Agendamento agendamento)
	{
		dao.alterarAgendamento(agendamento);
		return "redirect:listaAgendamento";
	}
}
