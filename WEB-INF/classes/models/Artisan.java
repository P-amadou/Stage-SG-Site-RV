package models;

public class Artisan extends UtilisateurData {

	public Artisan(int idUtilisateur, String mdpUtilisateur, String typeUtilisateur,
			String mailUtilisateur, int telUtilisateur, int codePostalUtilisateur, String villeUtilisateur,
			String adresseUtilisateur, int idArtisan, String denominationEntrepriseArtisan, String secteurArtian,
			String numSiretArtisan, String description) {
		super(idUtilisateur, mdpUtilisateur, typeUtilisateur, mailUtilisateur, telUtilisateur,
				codePostalUtilisateur, villeUtilisateur, adresseUtilisateur);
		this.idArtisan = idArtisan;
		this.denominationEntrepriseArtisan = denominationEntrepriseArtisan;
		this.secteurArtisan = secteurArtian;
		this.numSiretArtisan = numSiretArtisan;
		this.description = description;
	}
	   
	private int idArtisan;
	private String denominationEntrepriseArtisan;
	private String secteurArtisan;
	private String numSiretArtisan;
	private String description;
	
	@Override
	public Object[] data() {
		Object[] data = new Object[13];
		data[0] = getIdUtilisateur();
		data[1] = getMdpUtilisateur();
		data[2] = getTypeUtilisateur();
		data[3] = getMailUtilisateur();
		data[4] = getTelUtilisateur();
		data[5] = getCodePostalUtilisateur();
		data[6] = getVilleUtilisateur();
		data[7] = getAdresseUtilisateur();
		data[8] = idArtisan;
		data[9] = denominationEntrepriseArtisan;
		data[10] = secteurArtisan;
		data[11] = numSiretArtisan;
		data[12] = description;
		return data;
	}
	
	
	
}
