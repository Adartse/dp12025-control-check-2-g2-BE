package es.us.dp1.chess.federation.regulation;

import java.time.LocalDate;
import java.util.List;
import java.util.jar.Attributes.Name;

import es.us.dp1.chess.federation.model.NamedEntity;
import jakarta.persistence.Entity;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Transient;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
public class Referee extends NamedEntity {

    @Size(min = 10, max = 10)
    @NotNull
    @NotBlank
    String licenseNumber;

    @NotNull
    LocalDate certificationDate;
    
    @ManyToOne
    @NotNull
    Federation certifiedBy; 

    @ManyToMany
    List<ChessEvent> assignedTo; 
}