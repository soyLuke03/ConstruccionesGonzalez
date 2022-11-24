package com.jacaranda.Comparators;

import java.util.Comparator;

import com.jacaranda.Model.UsuarioMaterial;



	  public class OrderItemByDate implements Comparator<UsuarioMaterial> {

			@Override
			public int compare(UsuarioMaterial o1, UsuarioMaterial o2) {
				// TODO Auto-generated method stub
				return o1.getFecha().compareTo(o2.getFecha());
			}
	    }
	

