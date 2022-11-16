package com.jacaranda.Dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

public class ConnectorDB {
	private StandardServiceRegistry sr= null;
	private SessionFactory sf= null;
	private Session session=null;	
	
	public ConnectorDB() {
		StandardServiceRegistry sr = new StandardServiceRegistryBuilder().configure().build();
		SessionFactory sf = new MetadataSources(sr).buildMetadata().buildSessionFactory();
		Session session = sf.openSession();
	}
	
	public Session getSession() {
		return this.session;
	}
}
