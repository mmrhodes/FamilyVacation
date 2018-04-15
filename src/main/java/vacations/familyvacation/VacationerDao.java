
	package vacations.familyvacation;

	import java.util.List;

	import javax.persistence.EntityManager;
	import javax.persistence.EntityManagerFactory;
	import javax.persistence.Persistence;
	import javax.persistence.TypedQuery;

	import org.springframework.beans.factory.annotation.Autowired;

	public class VacationerDao {
		
		
	EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("Vacationer");
		

		public void insertVacationer(Vacationer personToAdd) {
			EntityManager em = emfactory.createEntityManager();
			em.getTransaction().begin();
			em.persist(personToAdd);
			em.getTransaction().commit();
			em.close();
		}


		public List<Vacationer> getAllVacationer() {
			EntityManager em = emfactory.createEntityManager();
			em.getTransaction().begin();
			String q = "select v from Vacationer v";
			TypedQuery<Vacationer> typedQuery = em.createQuery(q, Vacationer.class);
			List<Vacationer> all = typedQuery.getResultList();
			return all;
		}
		}
		


