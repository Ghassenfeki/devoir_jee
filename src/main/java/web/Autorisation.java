package web;
import java.io.Serializable;
import java.sql.Date;
public class Autorisation implements Serializable {
	private Long id_autorisation;
	private Long enseignant_id;
	private String institut;
	private String module;
	private String matiere;
	private double nb_heure;
	private String date;
	
	public Autorisation() {
		super();
	}
	public Autorisation( Long enseignant_id, String institut, String module, String matiere, double nb_heure, String date) {
		super();

		this.enseignant_id = enseignant_id;
		this.institut = institut;
		this.module = module;
		this.matiere = matiere;
		this.nb_heure = nb_heure;
		this.date = date;
	}
	public Long getId_autorisation() {
		return id_autorisation;
	}
	public void setId_autorisation(Long id_autorisation) {
		this.id_autorisation = id_autorisation;
	}
	public Long getEnseignant_id() {
		return enseignant_id;
	}
	public void setEnseignant_id(Long enseignant_id) {
		this.enseignant_id = enseignant_id;
	}
	public String getInstitut() {
		return institut;
	}
	public void setInstitut(String institut) {
		this.institut = institut;
	}
	public String getModule() {
		return module;
	}
	public void setModule(String module) {
		this.module = module;
	}
	public String getMatiere() {
		return matiere;
	}
	public void setMatiere(String matiere) {
		this.matiere = matiere;
	}
	public double getNb_heure() {
		return nb_heure;
	}
	public void setNb_heure(double nb_heure) {
		this.nb_heure = nb_heure;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	

}
