package com.codeonblue.sphidb.service;

import java.util.List;

import com.codeonblue.sphidb.model.Servico;

public interface ServicoService {

	public List<Servico> listarTodosComPaginacao(int offset, int max);
	
	public List<Servico> listarTodos();
	
	public void salvar(Servico objeto);
	
	public void excluir(Servico objeto);
	
	public Servico consultarPorId(int id);
	
}
