package com.jacaranda.Model;

import java.time.LocalDateTime;
import java.util.Objects;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
@IdClass(UsuarioMaterialID.class)
public class UsuarioMaterial {

	@Id
	@ManyToOne
	@JoinColumn(
			name="usuario",
			insertable = false, updatable = false
			)
	private Usuario usuario;
	
	@Id
	@ManyToOne
	@JoinColumn(
			name="codigo",
			insertable = false, updatable = false
			)
	private Material material;
	
	@Id
	@ManyToOne
	@JoinColumn(
			name="Fecha",
			insertable = false, updatable = false
			)
	private LocalDateTime fecha;
	
	private Double precio;
	private Integer cantidad;
	
	public UsuarioMaterial() {
		
	}
	
	public UsuarioMaterial(Usuario usuario, Material material, LocalDateTime fecha, Double precio, Integer cantidad) {
		super();
		this.usuario = usuario;
		this.material = material;
		this.fecha = fecha;
		this.precio = precio;
		this.cantidad = cantidad;
	}
	
	
	

	@Override
	public String toString() {
		return "UsuarioMaterial [usuario=" + usuario + ", material=" + material + ", fecha=" + fecha + ", precio="
				+ precio + ", cantidad=" + cantidad + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(cantidad, fecha, material, precio, usuario);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		UsuarioMaterial other = (UsuarioMaterial) obj;
		return Objects.equals(cantidad, other.cantidad) && Objects.equals(fecha, other.fecha)
				&& Objects.equals(material, other.material) && Objects.equals(precio, other.precio)
				&& Objects.equals(usuario, other.usuario);
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public Material getMaterial() {
		return material;
	}

	public void setMaterial(Material material) {
		this.material = material;
	}

	public LocalDateTime getFecha() {
		return fecha;
	}

	public void setFecha(LocalDateTime fecha) {
		this.fecha = fecha;
	}

	public Double getPrecio() {
		return precio;
	}

	public void setPrecio(Double precio) {
		this.precio = precio;
	}

	public Integer getCantidad() {
		return cantidad;
	}

	public void setCantidad(Integer cantidad) {
		this.cantidad = cantidad;
	}
	
	
	
	
}
