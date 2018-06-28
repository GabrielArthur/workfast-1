package br.com.ifpe.workfast.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SistemaController {
	@RequestMapping("ola")
	public String olaMundo() {
		return "ola";
	}
	
	@RequestMapping("colaborador/pagina")
	public String ajuda() {
		return "colaborador/ajudaColaborador";
	}
}
