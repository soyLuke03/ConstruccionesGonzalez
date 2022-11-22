package com.jacaranda.Dao;

import org.hibernate.Session;

import com.jacaranda.Model.UsuarioMaterial;

public class DaoCarrito {

	private Session session = null;
	
	public DaoCarrito() {
		ConnectorDB conectordb = new ConnectorDB();
		session = conectordb.getSession();
	}
	
	public Boolean addItem(UsuarioMaterial usuarioMaterial) {
		boolean added = false;
		session.getTransaction().begin();
		if (usuarioMaterial != null) {
			// Aqui va la transacci�n a realizar
			try {
				session.save(usuarioMaterial);
			} catch (Exception e) {
				session.getTransaction().rollback();
			} 
		}
		// --------------------------------
		session.getTransaction().commit();
		return added;
	}
	
}
