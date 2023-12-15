package ar.com.integrador.dao.implement;
import ar.com.integrador.dao.iOradorDAO;
import ar.com.integrador.db.AdministradorDeConexiones;
import ar.com.integrador.domain.Orador;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.ArrayList;

public class OradorDAOMysqlImpl implements iOradorDAO {
	@Override
	public Orador getById(Long id)  throws Exception{
		Connection connection = AdministradorDeConexiones.getConnection();

		String sql = "select * from oradores where id_orador = " + id;
	   
		Statement statement  = connection.createStatement();
		ResultSet resultset = statement.executeQuery(sql);

		if (resultset.next()){
			Long idBd = resultset.getLong("id_orador");
			String nombreBd = resultset.getString("nombre");
			String apellidoBd = resultset.getString("apellido");
			String mailBd = resultset.getString("mail");
			String temaBd = resultset.getString("tema");
			cerrar(connection);
			return new Orador(idBd,nombreBd,apellidoBd,mailBd,temaBd);
		}
		cerrar(connection);
		return null;
	}

	@Override
	public List<Orador> findAll() throws Exception {
		Connection connection = AdministradorDeConexiones.getConnection();
	    String sql = "select * from oradores;";
			   
		Statement statement  = connection.createStatement();
		ResultSet resultset = statement.executeQuery(sql);

		List<Orador> oradores = new ArrayList<Orador>();	

		while (resultset.next()){
			Long idBd = resultset.getLong("id_orador");
			String nombreBd = resultset.getString("nombre");
			String apellidoBd = resultset.getString("apellido");
			String mailBd = resultset.getString("mail");
			String temaBd = resultset.getString("tema");
			
			Orador o = new Orador(idBd,nombreBd,apellidoBd,mailBd,temaBd);
			oradores.add(o);			
			}
		cerrar(connection);
		
		return oradores;
	}

	@Override
	public void delete(Long id) throws Exception {
		Connection connection = AdministradorDeConexiones.getConnection();

	    String sql = "DELETE FROM oradores WHERE id_orador=" + id;

	 	Statement statement  = connection.createStatement();
		statement.executeUpdate(sql);
		cerrar(connection); 
	}

	@Override
	public void update(Orador orador) throws Exception {		
		Connection connection = AdministradorDeConexiones.getConnection();
		
		String sql = "update oradores set nombre = ?, apellido = ?, mail = ?, tema = ? where id_orador= ?"  ;
		PreparedStatement statement  = connection.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
	    
		statement.setString(1,orador.getNombre());
		statement.setString(2,orador.getApellido());
		statement.setString(3,orador.getMail());
		statement.setString(4,orador.getTema());
		statement.setLong(5,orador.getId());
		
		statement.execute();
		
		cerrar(connection);
	}

	@Override
	public void create(Orador newOrador) throws Exception {
		Connection connection = AdministradorDeConexiones.getConnection();

		 String sql = "insert into oradores (nombre, apellido,mail, tema) values (?,?,?,?)" ;
		 PreparedStatement statement  = connection.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
		 statement.setString(1,newOrador.getNombre());
		 statement.setString(2,newOrador.getApellido());
		 statement.setString(3,newOrador.getMail());
		 statement.setString(4,newOrador.getTema());
		 
		 statement.execute();
		 
		 ResultSet res = statement.getGeneratedKeys();
		 if (res.next()) {
			 System.out.println("Se creo el Orador correctamente");
		 }
		 cerrar(connection);
	}
	@Override
	public List<Orador> search(String clave) throws Exception {
		Connection connection = AdministradorDeConexiones.getConnection();

		String sql = "SELECT * FROM ORADORES WHERE TEMA LIKE ?";
		PreparedStatement statement = connection.prepareStatement(sql);

		statement.setString(1, "%" + clave + "%");

		ResultSet resultSet = statement.executeQuery();

		List<Orador> orador = new ArrayList<Orador>();

		while (resultSet.next()) {
			orador.add(this.crearOrador(resultSet));
		}
		
		cerrar(connection);
		
		return orador;
	}
	
	private void cerrar(Connection con) throws Exception{
		con.close();
	}
	
	private Orador crearOrador(ResultSet resultset) throws Exception {
		Long idBd = resultset.getLong("id_orador");
		String nombreBd = resultset.getString("nombre");
		String apellidoBd = resultset.getString("apellido");
		String mailBd = resultset.getString("mail");
		String temaBd = resultset.getString("tema");
		
		return new Orador(idBd,nombreBd,apellidoBd,mailBd,temaBd);
	}
}
