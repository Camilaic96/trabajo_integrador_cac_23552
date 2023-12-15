package ar.com.integrador.dao.implement;
import ar.com.integrador.dao.iTicketDAO;
import ar.com.integrador.db.AdministradorDeConexiones;
import ar.com.integrador.domain.Ticket;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.ArrayList;

public class TicketDAOMysqlImpl implements iTicketDAO {
	@Override
	public Ticket getById(Long id)  throws Exception{
		Connection connection = AdministradorDeConexiones.getConnection();
		String sql = "select * from tickets where id_ticket = " + id;	   
		Statement statement  = connection.createStatement();
		ResultSet resultset = statement.executeQuery(sql);

		if (resultset.next()){
			Long idBd = resultset.getLong("id_ticket");
			Long cantidadBd = resultset.getLong("cantidad");
			String categoriaBd = resultset.getString("categoria");
			String mailBd = resultset.getString("mail");
			Long precioTotalBd = resultset.getLong("precio_total");
			String nombreBd = resultset.getString("nombre");
			String apellidoBd = resultset.getString("apellido");
			
			cerrar(connection);
			return new Ticket(idBd,cantidadBd,categoriaBd,mailBd,precioTotalBd,nombreBd,apellidoBd);
		}
		cerrar(connection);
		return null;
	}

	@Override
	public List<Ticket> findAll() throws Exception {
		Connection connection = AdministradorDeConexiones.getConnection();
	    String sql = "select * from tickets;";   
		Statement statement  = connection.createStatement();
		ResultSet resultset = statement.executeQuery(sql);

		List<Ticket> tickets = new ArrayList<Ticket>();	
			
		while (resultset.next()){
			Long idBd = resultset.getLong("id_ticket");
			Long cantidadBd = resultset.getLong("cantidad");
			String categoriaBd = resultset.getString("categoria");
			String mailBd = resultset.getString("mail");
			Long precioTotalBd = resultset.getLong("precio_total");
			String nombreBd = resultset.getString("nombre");
			String apellidoBd = resultset.getString("apellido");

			Ticket t = new Ticket(idBd,cantidadBd,categoriaBd,mailBd,precioTotalBd,nombreBd,apellidoBd);
			tickets.add(t);
		}
		cerrar(connection);	
	   return tickets;
	}

	@Override
	public void delete(Long id) throws Exception {
		Connection connection = AdministradorDeConexiones.getConnection();

	    String sql = "DELETE FROM tickets WHERE id_ticket=" + id;

	 	Statement statement  = connection.createStatement();
		statement.executeUpdate(sql);
		cerrar(connection); 
	}

	@Override
	public void update(Ticket ticket) throws Exception {
		Connection connection = AdministradorDeConexiones.getConnection();
		 String sql = "update tickets set cantidad = ?, categoria = ?, mail = ?, precio_total = ?, nombre = ?, apellido = ? where id_ticket= ?"  ;
		 PreparedStatement statement  = connection.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
	     statement.setLong(1,ticket.getCantidad());
		 statement.setString(2,ticket.getCategoria());
		 statement.setString(3,ticket.getMail());
		 statement.setLong(4,ticket.getPrecioTotal());
		 statement.setString(5,ticket.getNombre());
		 statement.setString(6,ticket.getApellido());
		 statement.setLong(7,ticket.getId());

		 statement.execute();
		
		 cerrar(connection);
	}

	@Override
	public void create(Ticket newTicket) throws Exception {
		Connection connection = AdministradorDeConexiones.getConnection();
		 String sql = "insert into tickets (cantidad, categoria, mail, precio_total, nombre, apellido) values (?,?,?,?,?,?)" ;
		 PreparedStatement statement  = connection.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
		 statement.setLong(1,newTicket.getCantidad());
		 statement.setString(2,newTicket.getCategoria());
		 statement.setString(3,newTicket.getMail());
		 statement.setLong(4,newTicket.getPrecioTotal());
		 statement.setString(5,newTicket.getNombre());
		 statement.setString(6,newTicket.getApellido());

		 statement.execute();
		 
		 ResultSet res = statement.getGeneratedKeys();
		 if (res.next()) {
			 System.out.println("Se creo el Ticket correctamente");
		 }
		 cerrar(connection);
	}
	/*
	@Override
	public List<Ticket> search(String clave) throws Exception {
		Connection connection = AdministradorDeConexiones.getConnection();

		String sql = "SELECT * FROM TICKETS WHERE TEMA LIKE ?";
		PreparedStatement statement = connection.prepareStatement(sql);

		//setear el valor que va en remplazo del ?
		statement.setString(1, "%" + clave + "%");
		
		// 3 - resultset
		ResultSet resultSet = statement.executeQuery();

		// Interface i = new ClaseQueImplementaLaInterface();
		List<Orador> orador = new ArrayList<Orador>();

		// verifico si hay datos
		while (resultSet.next()) {
			orador.add(this.crearOrador(resultSet));
		}
		
		cerrar(connection);
		
		return orador;
	}
	*/
	private void cerrar(Connection con) throws Exception{
		con.close();
	}
	
	private Ticket crearTicket(ResultSet resultset) throws Exception {
		Long idBd = resultset.getLong("id_ticket");
		Long cantidadBd = resultset.getLong("cantidad");
		String categoriaBd = resultset.getString("categoria");
		String mailBd = resultset.getString("mail");
		Long precioTotalBd = resultset.getLong("precio_total");
		String nombreBd = resultset.getString("categoria");
		String apellidoBd = resultset.getString("categoria");
		
		return new Ticket(idBd,cantidadBd,categoriaBd,mailBd,precioTotalBd,nombreBd,apellidoBd);
	}
}
