package com.jacaranda.Dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

public class ConnectorDB {
	private StandardServiceRegistry sr= new StandardServiceRegistryBuilder().configure().build();
	private SessionFactory sf= new MetadataSources(sr).buildMetadata().buildSessionFactory();
	private Session session=sf.openSession();	
	
	public ConnectorDB() {
	}
	
	public Session getSession() {
		return session;
	}
}
