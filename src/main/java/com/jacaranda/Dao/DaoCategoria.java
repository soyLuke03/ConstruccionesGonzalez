package com.jacaranda.Dao;

import java.util.List;
import org.hibernate.query.Query;
import com.jacaranda.Model.Categoria;

public class DaoCategoria {

	
	public List<Categoria> getCategorias() {
		Query<Categoria> query = ConnectorDB.getSession().createQuery("SELECT c FROM com.jacaranda.Model.Categoria c");
		return query.getResultList();
	}
}
