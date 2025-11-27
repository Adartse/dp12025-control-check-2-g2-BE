package es.us.dp1.chess.federation.regulation;

import java.time.LocalDate;
import java.util.List;

import es.us.dp1.chess.federation.model.NamedEntity;
import jakarta.persistence.Entity;
import jakarta.persistence.Transient;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.Setter;


@Getter
@Setter
@Entity
public class Referee extends NamedEntity{

    @NotBlank
    @NotNull
    @Size(min = 10, max = 10)
    String licenseNumber;

    @NotNull
    LocalDate certificationDate;
    
    @Transient
    Federation certifiedBy; 

    @Transient
    List<ChessEvent> assignedTo; 

}