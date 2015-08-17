package com.codeonblue.sphidb.dao;

import java.util.List;

import com.codeonblue.sphidb.model.Servico;

public interface ServicoDAO {
	
	public List<Servico> listPaginated(int offset, int max);
	
	public List<Servico> list();
	
	public void persist(Servico objeto);
	
	public void delete(Servico objeto);
	
	public Servico getById(int id);
	
}
