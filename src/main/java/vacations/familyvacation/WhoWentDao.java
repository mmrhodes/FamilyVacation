package vacations.familyvacation;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class WhoWentDao {

	EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("WhoWent");

	public void insertPlannedVacation(WhoWent plotToAdd) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		em.persist(plotToAdd);
		em.getTransaction().commit();
		em.close();
	}

	
		
	
}
