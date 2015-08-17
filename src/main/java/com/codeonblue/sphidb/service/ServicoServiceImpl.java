package com.codeonblue.sphidb.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.codeonblue.sphidb.dao.ServicoDAO;
import com.codeonblue.sphidb.model.Servico;

@Service
@Transactional
public class ServicoServiceImpl implements ServicoService {

	@Autowired
	private ServicoDAO servicoDAO;
	
	
	@Override
	public List<Servico> listarTodosComPaginacao(int offset, int max) {
		return servicoDAO.listPaginated(offset, max);
	}

	@Override
	public List<Servico> listarTodos() {
		return servicoDAO.list();
	}


	@Override
	public Servico consultarPorId(int id) {
		return servicoDAO.getById(id);
	}

	@Override
	public void salvar(Servico objeto) {
		servicoDAO.persist(objeto);
	}

	@Override
	public void excluir(Servico objeto) {
		servicoDAO.delete(objeto);
		
	}

}
