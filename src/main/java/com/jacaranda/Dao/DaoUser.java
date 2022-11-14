package com.jacaranda.Dao;

import org.hibernate.Session;
import org.hibernate.query.Query;

import com.jacaranda.Model.Usuario;



public class DaoUser {

	
	
	public boolean userIsValid(String name) {
	    boolean valid = false;
		try {
			Session session = ConnectorDB.getSession();
			Usuario user = (Usuario) session.get(Usuario.class, name);
			if(user != null) {
				valid = true;
			}
		}catch(Exception e) {
		    System.out.println(e.getMessage());
		}
		return valid;
	}
	
	
	public boolean addUsuario(Usuario usuario) {
			boolean added = false;
			Session session = ConnectorDB.getSession();
			session.getTransaction().begin();
			// Aqui va la transacci�n a realizar
			session.save(usuario);
			// --------------------------------
			session.getTransaction().commit();
			return added;
	}
	

	
}
