package web;

import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import web.SingletonConnection;

public class IAutorisationDaoImpl implements IAutorisationDAO {

	@Override
	public Autorisation saveenn(Autorisation aut) {
		Connection conn=SingletonConnection.getConnection();
	       try {
			PreparedStatement ps= conn.prepareStatement("INSERT INTO Autorisation (Enseignant_id,Institut,Module,Matiere,Nb_heure,Date) VALUES(?,?,?,?,?,?)");
			
			
			ps.setLong  (1, aut.getEnseignant_id());
			ps.setString(2, aut.getInstitut());
			ps.setString(3, aut.getModule());
			ps.setString(4, aut.getMatiere());
			ps.setDouble(5, aut.getNb_heure());
			ps.setString(6, aut.getDate());




			ps.executeUpdate();
			
			
			PreparedStatement ps2= conn.prepareStatement
					("SELECT MAX(ID_Enseignant) as MAX_ID FROM Enseignant");
			ResultSet rs =ps2.executeQuery();
			if (rs.next()) {
				//aut.setId_enseignant(rs.getLong("MAX_ID"));
			}
			ps.close();
			ps2.close();
				 
					
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return aut;
	}
	@Override

	public List<Autorisation> autorisationParMC(String autme) {
		List<Autorisation> prods2= new ArrayList<Autorisation>();
		      Connection conn=SingletonConnection.getConnection();
		      try {
		      PreparedStatement ps= conn.prepareStatement("SELECT * FROM Autorisation WHERE matiere LIKE ?");
		ps.setString(1, "%"+autme+"%");
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
		Autorisation aut = new Autorisation();
		aut.setId_autorisation(rs.getLong("id"));
		aut.setEnseignant_id(rs.getLong("enseignant_id"));
		aut.setInstitut(rs.getString("institut"));
		aut.setModule(rs.getString("module"));
		aut.setMatiere(rs.getString("matiere"));
		aut.setNb_heure(rs.getInt("nb_heure"));
		aut.setDate(rs.getString("date"));
		prods2.add(aut);
		}
		} catch (SQLException e) {

		e.printStackTrace();
		}
		return prods2;

		}

	
}
