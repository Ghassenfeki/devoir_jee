package web;

import java.util.List;

public interface IAutorisationDAO {
	
	public Autorisation saveenn(Autorisation aut);
	public List<Autorisation> autorisationParMC(String autme);
	
}
