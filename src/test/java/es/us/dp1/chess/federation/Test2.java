package es.us.dp1.chess.federation;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;

import es.us.dp1.chess.federation.regulation.ChessEvent;
import es.us.dp1.chess.federation.regulation.Federation;
import es.us.dp1.chess.federation.regulation.Referee;
import es.us.dp1.chess.federation.regulation.Rule;
import es.us.dp1.chess.federation.user.User;
import jakarta.persistence.EntityManager;
import jakarta.persistence.ManyToMany;
import jakarta.validation.constraints.NotNull;

import jakarta.persistence.ManyToOne;



@DataJpaTest
public class Test2 extends ReflexiveTest{

    @Autowired
    EntityManager em;

    @Test
    public void test2RefereeFederationAnnotation(){
        checkThatFieldIsAnnotatedWith(Federation.class, "certifiedBy", ManyToOne.class);
        checkThatFieldIsAnnotatedWith(Federation.class, "certifiedBy", NotNull.class);
    }

    @Test
    public void test2RefereeChessEventAnnotation(){
        checkThatFieldIsAnnotatedWith(ChessEvent.class, "assignedTo", ManyToMany.class);
    }

    @Test
    public void test2SanctionRefereeEventAnnotation(){
        checkThatFieldIsAnnotatedWith(Referee.class, "imposedBy", ManyToOne.class);
        checkThatFieldIsAnnotatedWith(Referee.class, "imposedBy", NotNull.class);
    }

    @Test
    public void test2SanctionUserEventAnnotation(){
        checkThatFieldIsAnnotatedWith(User.class, "imposedOn", ManyToOne.class);
        checkThatFieldIsAnnotatedWith(User.class, "imposedOn", NotNull.class);
    }

    @Test
    public void test2SanctionRuleEventAnnotation(){
        checkThatFieldIsAnnotatedWith(Rule.class, "ruleBroken", ManyToOne.class);
    }

    
}
