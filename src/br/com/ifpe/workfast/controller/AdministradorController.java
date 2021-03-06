package br.com.ifpe.workfast.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.ifpe.workfast.model.Profissao;
import br.com.ifpe.workfast.model.ProfissaoDao;
import br.com.ifpe.workfast.model.Usuario;
import br.com.ifpe.workfast.model.UsuarioDao;

@Controller
public class AdministradorController {
    
	// metodo para redirecionar para pagina inicial 
	@RequestMapping("paginaInicial")
	public String paginaInical() {
		return "administrador/index";
	}
	
	// metodo para redirecionar para pagina de profissao(especialização) 
	@RequestMapping("telaProfissao")
	public String profissao(Model model) {
		
		ProfissaoDao dao = new ProfissaoDao();
		List<Profissao> listaProfissao = dao.listar();
		model.addAttribute("listaProfissao", listaProfissao);
		return "administrador/profissao";
	}
	
	// metodo para redirecionar para pagina de gerenciamento de cliente 
	@RequestMapping("gerenciarCliente")
	public String gerenciarCliente(Model model) {
		UsuarioDao dao = new UsuarioDao();
		List<Usuario> listaUsuarioCliente = dao.listarUsuarioCliente();
		model.addAttribute("listaUsuarioCliente", listaUsuarioCliente);
		return "administrador/cliente";
	}
	
	// metodo para redirecionar para pagina de gerenciamento de administradores 
	@RequestMapping("gerenciarAdm")
	public String gerenciarAdm(Model model, HttpServletRequest request) {
		UsuarioDao dao = new UsuarioDao();
		Usuario usuario = (Usuario) request.getSession().getAttribute("usuarioLogado");

		List<Usuario> listaUsuarioAdm = dao.listarUsuarioAdm(usuario);
		model.addAttribute("listaUsuarioAdm", listaUsuarioAdm);
		return "administrador/adm";
	}
	
	// metodo para redirecionar para pagina de gerenciamento de prestador 
	@RequestMapping("gerenciarPrestador")
	public String gerenciarPrestador(Model model) {
		
		return "administrador/prestador";
	}
	
	// metodo para redirecionar para pagina que contem o formulario de cadastro
	//de administrador 
	@RequestMapping("cadastrarAdministrador")
	public String cadastrarAdm() {
		return "administrador/cadastroAdministrador";
	}
	
	// metodo para redirecionar para pagina que contem o formulario de cadastro
		//de profissao 
	@RequestMapping("cadastrarProfissao")
	public String cadastrarProfissao() {
	 return "administrador/cadastroProfissao";
	}
	
		
	
	
	
	
}
