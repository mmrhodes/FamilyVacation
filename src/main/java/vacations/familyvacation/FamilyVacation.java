package vacations.familyvacation;

public class FamilyVacation {
	
	private int id;
	private String location;
	private String event;
	private String vacationdates;
	private double cost;
	private boolean beenthere;
	private String whowent;
	
	
	public int getId() {
		return id;
	}
	
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getEvent() {
		return event;
	}
	public void setEvent(String event) {
		this.event = event;
	}
	public String getVacationdates() {
		return vacationdates;
	}
	public void setVacationdates(String vacationdates) {
		this.vacationdates = vacationdates;
	}
	public double getCost() {
		return cost;
	}
	public void setCost(double cost) {
		this.cost = cost;
	}
	public boolean isBeenthere() {
		return beenthere;
	}
	public void setBeenthere(boolean beenthere) {
		this.beenthere = beenthere;
	}
	public String getWhowent() {
		return whowent;
	}
	public void setWhowent(String whowent) {
		this.whowent = whowent;
	}

}
