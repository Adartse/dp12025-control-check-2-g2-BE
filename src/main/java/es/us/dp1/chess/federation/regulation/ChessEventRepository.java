package es.us.dp1.chess.federation.regulation;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

public interface ChessEventRepository extends CrudRepository<ChessEvent, Integer> {

    List<ChessEvent> findAll();

    Optional<ChessEvent> findById(Integer id);
        

}
