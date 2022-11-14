package com.jacaranda.Model;

import java.util.Objects;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity (name="materiales")
public class Material {

	@Id
	private Integer codigo;
	private String nombre;
	private String descripcion;
	private Integer precio;
	@ManyToOne
	@JoinColumn private Categoria categoria;
	
	public Material(Integer codigo, String nombre, String descripcion, Integer precio, Categoria cod_categoria) {
		super();
		this.codigo = codigo;
		this.nombre = nombre;
		this.descripcion = descripcion;
		this.precio = precio;
		this.categoria = cod_categoria;
	}
	
	public Material(Integer codigo, String nombre, String descripcion, Integer precio) {
		super();
		this.codigo = codigo;
		this.nombre = nombre;
		this.descripcion = descripcion;
		this.precio = precio;
	}
	
	
	
	
	
	
	
	
	//Metodos autogenerados
	@Override
	public int hashCode() {
		return Objects.hash(descripcion, categoria, codigo, nombre, precio);
	}


	public Integer getCodigo() {
		return codigo;
	}


	public void setCodigo(Integer codigo) {
		this.codigo = codigo;
	}


	public String getNombre() {
		return nombre;
	}


	public void setNombre(String nombre) {
		this.nombre = nombre;
	}


	public String getDescripcion() {
		return descripcion;
	}


	public void setDescripcion(String categoria) {
		this.descripcion = categoria;
	}


	public Integer getPrecio() {
		return precio;
	}


	public void setPrecio(Integer precio) {
		this.precio = precio;
	}


	public Categoria getCategoria() {
		return categoria;
	}

	public void setCategoria(Categoria categoria) {
		this.categoria = categoria;
	}

	@Override
	public String toString() {
		return "Material [codigo=" + codigo + ", nombre=" + nombre + ", descripcion=" + descripcion + ", precio=" + precio
				+ ", cod_categoria=" + categoria + "]";
	}


	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Material other = (Material) obj;
		return Objects.equals(descripcion, other.descripcion) && Objects.equals(categoria, other.categoria)
				&& Objects.equals(codigo, other.codigo) && Objects.equals(nombre, other.nombre)
				&& Objects.equals(precio, other.precio);
	}

	
}
