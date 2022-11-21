package com.jacaranda.Model;

import java.time.LocalDateTime;
import java.util.Objects;

public class ItemCarrito {

	private Integer idMaterial;
	private String idUsuario;
	
	private Integer cantidad;
	private Double precio;
	private LocalDateTime fechaCompra;
	
	public ItemCarrito() {
		
	}
	
	public ItemCarrito(Integer idMaterial, String idUsuario, Integer cantidad, Double precio,
			LocalDateTime fechaCompra) {
		super();
		this.idMaterial = idMaterial;
		this.idUsuario = idUsuario;
		this.cantidad = cantidad;
		this.precio = precio;
		this.fechaCompra = fechaCompra;
	}

	public Integer getIdMaterial() {
		return idMaterial;
	}

	public void setIdMaterial(Integer idMaterial) {
		this.idMaterial = idMaterial;
	}

	public String getIdUsuario() {
		return idUsuario;
	}

	public void setIdUsuario(String idUsuario) {
		this.idUsuario = idUsuario;
	}

	public Integer getCantidad() {
		return cantidad;
	}

	public void setCantidad(Integer cantidad) {
		this.cantidad = cantidad;
	}

	public Double getPrecio() {
		return precio;
	}

	public void setPrecio(Double precio) {
		this.precio = precio;
	}

	public LocalDateTime getFechaCompra() {
		return fechaCompra;
	}

	public void setFechaCompra(LocalDateTime fechaCompra) {
		this.fechaCompra = fechaCompra;
	}

	@Override
	public String toString() {
		return "ItemCarrito [idMaterial=" + idMaterial + ", idUsuario=" + idUsuario + ", cantidad=" + cantidad
				+ ", precio=" + precio + ", fechaCompra=" + fechaCompra + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(cantidad, fechaCompra, idMaterial, idUsuario, precio);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ItemCarrito other = (ItemCarrito) obj;
		return Objects.equals(cantidad, other.cantidad) && Objects.equals(fechaCompra, other.fechaCompra)
				&& Objects.equals(idMaterial, other.idMaterial) && Objects.equals(idUsuario, other.idUsuario)
				&& Objects.equals(precio, other.precio);
	}
	
	
	
}
