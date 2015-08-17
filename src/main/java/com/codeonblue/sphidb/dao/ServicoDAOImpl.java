package com.codeonblue.sphidb.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codeonblue.sphidb.model.Servico;

@Service
public class ServicoDAOImpl  implements ServicoDAO {

	@Autowired
	protected SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sf) {
		sessionFactory = sf;
	}

	protected Session getSession() {
		return getSessionFactory().getCurrentSession();
	}

	@Override
	public void persist(Servico objeto) {
		getSession().saveOrUpdate(objeto);
	}

	@Override
	public void delete(Servico objeto) {
		getSession().delete(objeto);
	}

	@Override
	public Servico getById(int id) {
		return (Servico) getSession().get(Servico.class, id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Servico> listPaginated(int offset, int max) {
		return (List<Servico>) getSession().createCriteria(Servico.class)
				.setMaxResults(max).setFirstResult(offset).list();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Servico> list() {
		return (List<Servico>) getSession().createCriteria(Servico.class).list();
	}

}
