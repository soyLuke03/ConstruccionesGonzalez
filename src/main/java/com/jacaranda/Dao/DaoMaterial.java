package com.jacaranda.Dao;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.query.Query;

import com.jacaranda.Model.Material;




public class DaoMaterial {

	private StandardServiceRegistry sr;
	private SessionFactory sf;
	private Session session;
	
	
	
	public List<Material> getMateriales() throws Exception {
		Query<Material> query = session.createQuery("SELECT it FROM materiales it");
		List<Material> resultado = query.getResultList();
		return resultado;
	}
}
