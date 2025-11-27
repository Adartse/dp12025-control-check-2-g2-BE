package es.us.dp1.chess.federation.regulation;


import es.us.dp1.chess.federation.model.BaseEntity;
import es.us.dp1.chess.federation.user.User;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.Transient;
import jakarta.validation.constraints.DecimalMin;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
public class Sanction extends BaseEntity{

    @NotBlank
    @NotNull
    @Size(min = 15, max = 70)
    String description;

    @DecimalMin("0.01")
    Double monetaryFine;

    @NotNull
    @Enumerated(EnumType.STRING)
    SanctionType type;

    @Transient
    Referee imposedBy;

    @Transient
    User imposedOn;

    @Transient
    Rule ruleBroken;
    

}
