package vacations.familyvacation;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class FamilyVacationDao {
	
	
EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("FamilyVacation");
	
	public void insertFamilyVacation(FamilyVacation vacationToAdd) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		em.persist(vacationToAdd);
		em.getTransaction().commit();
		em.close();
	}

	public List<FamilyVacation> getAllFamilyVacation() {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		String q = "select f from FamilyVacation f";
		TypedQuery<FamilyVacation> typedQuery = em.createQuery(q, FamilyVacation.class);
		List<FamilyVacation> all = typedQuery.getResultList();
		return all;
	}

	}
	
