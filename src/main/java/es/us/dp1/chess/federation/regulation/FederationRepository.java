package es.us.dp1.chess.federation.regulation;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

public interface FederationRepository extends CrudRepository<Federation, Integer>{

    List<Federation> findAll();

    Federation findById(int i); 

}
