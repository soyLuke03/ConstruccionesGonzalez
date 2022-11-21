package com.jacaranda.Model;

import java.util.List;
import java.util.Objects;

public class CarritoDeLaCompra {

	
	private List<ItemCarrito> listaDeItemDelCarrito;

	public CarritoDeLaCompra(List<ItemCarrito> listaDeItemDelCarrito) {
		super();
		this.listaDeItemDelCarrito = listaDeItemDelCarrito;
	}

	public List<ItemCarrito> getListaDeItemDelCarrito() {
		return listaDeItemDelCarrito;
	}

	public void setListaDeItemDelCarrito(List<ItemCarrito> listaDeItemDelCarrito) {
		this.listaDeItemDelCarrito = listaDeItemDelCarrito;
	}

	@Override
	public int hashCode() {
		return Objects.hash(listaDeItemDelCarrito);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		CarritoDeLaCompra other = (CarritoDeLaCompra) obj;
		return Objects.equals(listaDeItemDelCarrito, other.listaDeItemDelCarrito);
	}

	@Override
	public String toString() {
		return "CarritoDeLaCompra [listaDeItemDelCarrito=" + listaDeItemDelCarrito + "]";
	}
	
	
	
}
