package br.com.toshio.crud.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.toshio.crud.dao.ContatoDao;
import br.com.toshio.crud.model.Contato;

@Controller
public class ContatoController {

	@RequestMapping("telaAddContato")
	public String formulario() {
		return "contato/formulario";
	}
	
	@RequestMapping("adicionaContato")
	public String adiciona(Contato contato) {
		ContatoDao dao = new ContatoDao();
		dao.adiciona(contato);
		return "redirect:listaContato";
	}
	
	@RequestMapping("listaContato")
	public String lista(Model model) {
		ContatoDao dao = new ContatoDao();
		List<Contato> contatos = dao.lista();
		
		model.addAttribute("contatos", contatos);
		return "contato/lista";
	}
	
	@RequestMapping("removeContato")
	public String remove(Contato contato) {
		ContatoDao dao = new ContatoDao();
		dao.remove(contato);
		return "forward:listaContato";
	}
	
	
	@RequestMapping("mostraContato")
	public String mostra(Long id, Model model) {
		ContatoDao dao = new ContatoDao();
		model.addAttribute("contatos", dao.buscaId(id));
		return "contato/mostra";
		
	}
	
	@RequestMapping("alteraContato")
	public String altera(Contato contato) {
		ContatoDao dao = new ContatoDao();
		dao.altera(contato);
		return "redirect:listaContato";
	}
	
	/*
	 * FAZER A LÓGICA PARA ALTERAR E MOSTRAR COM JSON E AJAX
	 * ADICIONAR CSS
	 * */
	
}
