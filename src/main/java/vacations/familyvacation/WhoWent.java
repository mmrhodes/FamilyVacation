package vacations.familyvacation;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "vacationer")
public class WhoWent {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@ManyToOne
	@JoinColumn(name = "who")
	private Vacationer vacationer;
	@ManyToOne
	@JoinColumn(name = "place")
	private FamilyVacation familyVacation;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Vacationer getVacationer() {
		return vacationer;
	}
	public void setVacationer(Vacationer vacationer) {
		this.vacationer = vacationer;
	}
	public FamilyVacation getFamilyVacation() {
		return familyVacation;
	}
	public void setFamilyVacation(FamilyVacation familyVacation) {
		this.familyVacation = familyVacation;
	}
	public WhoWent() {
		super();
	}
	
	
	
	
	
}
