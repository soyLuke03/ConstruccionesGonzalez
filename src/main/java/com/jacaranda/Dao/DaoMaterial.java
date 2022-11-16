package com.jacaranda.Dao;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.query.Query;

import com.jacaranda.Model.Material;
import com.jacaranda.Model.Usuario;




public class DaoMaterial {
	
	public List<Material> getMateriales() throws Exception {
		Session session = ConnectorDB.getSession();
		Query<Material> query = session.createQuery("SELECT it FROM com.jacaranda.Dao.Model.Material it");
		List<Material> resultado = query.getResultList();
		return resultado;
	}
	
	public boolean addMaterial(Material material) {
		boolean added = false;
		Session session = ConnectorDB.getSession();
		session.getTransaction().begin();
		// Aqui va la transacci�n a realizar
		session.save(material);
		// --------------------------------
		session.getTransaction().commit();
		return added;
}
}
