package ar.com.integrador.dao;
import ar.com.integrador.domain.Ticket;
import java.util.List;

public interface iTicketDAO {
	
		public Ticket getById(Long id) throws Exception; 

		public List<Ticket> findAll() throws Exception;
		
		public void delete(Long id) throws Exception;
		
		public void update(Ticket ticket) throws Exception;
		
		public void create(Ticket newTicket) throws Exception;
		
	    // public List<Orador> search(String clave) throws Exception;
}
