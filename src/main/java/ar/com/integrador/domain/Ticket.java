package ar.com.integrador.domain;

public class Ticket {
	private Long id_ticket;
	private Long cantidad;
	private String categoria;
	private String mail;
	private Long precio_total;
	private String nombre;
	private String apellido;
	
	public Ticket(Long cantidad, String categoria,String mail,Long precio_total,String nombre,String apellido) {
		this.cantidad = cantidad;
		this.categoria = categoria;
		this.mail = mail;
		this.precio_total = precio_total;
		this.nombre = nombre;
		this.apellido = apellido;
	}

	public Ticket(Long id_ticket, Long cantidad, String categoria,String mail,Long precio_total,String nombre,String apellido) {
		this.id_ticket = id_ticket;
		this.cantidad = cantidad;
		this.categoria = categoria;
		this.mail = mail;
		this.precio_total = precio_total;
		this.nombre = nombre;
		this.apellido = apellido;
	}

	public Long getId() {
		return this.id_ticket;
	}
    
	public void setId(Long id_ticket) {
		this.id_ticket = id_ticket;
	}

	public Long getCantidad() {
		return this.cantidad;
	}

	public void setCantidad(Long cantidad) {
		this.cantidad = cantidad;
	}

	public String getCategoria() {
		return this.categoria;
	}

	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}

	public String getMail() {
		return this.mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}
	
	public Long getPrecioTotal() {
		return this.precio_total;
	}

	public void setPrecioTotal(Long precio_total) {
		this.precio_total = precio_total;
	}	
	public String getNombre() {
		return this.nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellido() {
		return this.apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
}
