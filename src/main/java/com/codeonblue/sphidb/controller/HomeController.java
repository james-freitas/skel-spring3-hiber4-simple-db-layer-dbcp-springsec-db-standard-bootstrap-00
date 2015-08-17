package com.codeonblue.sphidb.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.codeonblue.sphidb.service.ServicoService;

@Controller
public class HomeController {
	
	@Autowired
	private ServicoService servicoService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "index";
	}

	@PreAuthorize("hasRole('ROLE_USER')")
	@RequestMapping(value="teste", method = RequestMethod.GET)
	public String teste(Model modelServico) {
		modelServico.addAttribute("servicos", servicoService.listarTodos());
		return "teste";
	}
	
}
