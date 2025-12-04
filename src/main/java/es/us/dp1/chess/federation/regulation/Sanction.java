package es.us.dp1.chess.federation.regulation;


import es.us.dp1.chess.federation.model.BaseEntity;
import es.us.dp1.chess.federation.user.User;
import io.micrometer.common.lang.NonNull;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.ManyToOne;
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

    @Size(min = 15, max = 70)
    @NonNull
    @NotBlank
    String description;

    @DecimalMin("0.01")
    Double monetaryFine;

    @Enumerated(EnumType.STRING)
    @NotNull
    SanctionType type;

    @ManyToOne
    @NotNull
    Referee imposedBy;

    @ManyToOne
    @NotNull
    User imposedOn;

    @ManyToOne
    Rule ruleBroken;
    

}