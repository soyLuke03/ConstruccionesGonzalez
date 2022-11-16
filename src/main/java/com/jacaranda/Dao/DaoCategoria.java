package com.jacaranda.Dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;
import com.jacaranda.Model.Categoria;

public class DaoCategoria {

	
	public List<Categoria> getCategorias() {
		Query<Categoria> query = ConnectorDB.getSession().createQuery("SELECT c FROM com.jacaranda.Model.Categoria c");
		return query.getResultList();
	}
	
	public static Integer getCodigoCategoria(String categoriaName) {
		
		Session session = ConnectorDB.getSession();
		Query<Categoria> query = session.createQuery("SELECT c FROM com.jacaranda.Model.Categoria c");
		List<Categoria> categorias = query.getResultList();
		Integer codigo = null;
		for(Categoria categoria : categorias) {
			if(categoria.getNombre().equals(categoriaName)) {
				return categoria.getCodigo();
			}
		}
				
		return codigo;
	}
	
	public static Categoria getCategoria(Integer categoriaId) {
		
		Session session = ConnectorDB.getSession();
		Categoria categoria = (Categoria) session.get(Categoria.class, categoriaId);
		
		return categoria;
	}
}
