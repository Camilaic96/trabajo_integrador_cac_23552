package ar.com.integrador.dao;
import ar.com.integrador.domain.Orador;
import java.util.List;

public interface iOradorDAO {

		public Orador getById(Long id) throws Exception;
		
		public List<Orador> findAll() throws Exception;
		
		public void delete(Long id) throws Exception;

		public void update(Orador orador) throws Exception;

		public void create(Orador newOrador) throws Exception;

	    public List<Orador> search(String clave) throws Exception;
}
