package com.jacaranda.Model;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class CarritoDeLaCompra {

	
	private List<UsuarioMaterial> listaDeUsuarioMaterial;

	public CarritoDeLaCompra() {
		listaDeUsuarioMaterial = new ArrayList<>();
	}

	public void vaciarListaDeItemDelCarrito() {
		listaDeUsuarioMaterial = new ArrayList<>();
	}
	
	public List<UsuarioMaterial> getListaDeItemDelCarrito() {
		return listaDeUsuarioMaterial;
	}

	public void addListaDeItemDelCarrito(UsuarioMaterial usuarioMaterial) {
		if(listaDeUsuarioMaterial!=null) {
			
			if(listaDeUsuarioMaterial.size()==0) {
				this.listaDeUsuarioMaterial.add(usuarioMaterial);
			}else {
				this.listaDeUsuarioMaterial.add(listaDeUsuarioMaterial.size()-1,usuarioMaterial);
			}
		}
	}
	
	
	
	
	

	@Override
	public int hashCode() {
		return Objects.hash(listaDeUsuarioMaterial);
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
		return Objects.equals(listaDeUsuarioMaterial, other.listaDeUsuarioMaterial);
	}

	@Override
	public String toString() {
		return "CarritoDeLaCompra [listaDeUsuarioMaterial=" + listaDeUsuarioMaterial + "]";
	}
	
	
	
}
