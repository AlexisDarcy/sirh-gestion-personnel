/**
 * 
 */
package dev.sgp.entite;

import java.time.LocalDate;
import java.time.ZonedDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author Alexis Darcy
 *
 */
@Entity
@Table(name = "collaborateur")
public class Collaborateur {
	
	/**matricule : String*/
	@Id
	@Column(name = "MATRICULE", nullable = false)
	private String matricule;
	/**civilite : String*/
	@Column(name = "CIVILITE")
	private String civilite;
	/**nom : String*/
	@Column(name = "NOM", nullable = false)
	private String nom;
	/**prenom : String*/
	@Column(name = "PRENOM", nullable = false)
	private String prenom;
	/**dateNaissance : LocalDate*/
	@Column(name = "DATE_NAISSANCE", nullable = false)
	private LocalDate dateNaissance;
	/**adresse : String*/
	@Column(name = "ADRESSE", nullable = false)
	private String adresse;
	/**numeroSecuSocial : String*/
	@Column(name = "NUMERO_SECU_SOCIAL", nullable = false)
	private String numeroSecuSocial;
	/**emailPro : String*/
	@Column(name = "EMAIL_PRO")
	private String emailPro;
	/**photo : String*/
	@Column(name = "PHOTO")
	private String photo;
	/**dateHeureCreation : ZonedDateTime*/
	@Column(name = "DATE_HEURE_CREATION")
	private ZonedDateTime dateHeureCreation;
	/**actif : boolean*/
	@Column(name = "ACTIF")
	private boolean actif;
	/**bic : String*/
	@Column(name = "BIC")
	private String bic;
	/**iban : String*/
	@Column(name = "iban")
	private String iban;
	/**intitulePoste : String*/
	@Column(name = "INTITULEPOSTE")
	private String intitulePoste;
	/**departement : String*/
	@Column(name = "DEPARTEMENT")
	private String departement;
	/**telephone : int*/
	@Column(name = "TELEPHONE")
	private String telephone; 
	/**compteur : int*/
	private static int compteur = 1;
	
	/**
	 * Constructeur
	 */
	public Collaborateur() {
		
	}
	
	/**
	 * Constructeur
	 * @param nom
	 * @param prenom
	 * @param dateNaissance
	 * @param adresse
	 * @param numeroSecuSocial
	 * @param emailPro
	 * @param photo
	 * @param dateHeureCreation
	 * @param actif
	 */
	public Collaborateur(String nom, String prenom, LocalDate dateNaissance, String adresse,
			String numeroSecuSocial, String emailPro, String photo, ZonedDateTime dateHeureCreation, boolean actif) {
		this.matricule = "M" + compteur;
		this.nom = nom;
		this.prenom = prenom;
		this.dateNaissance = dateNaissance;
		this.adresse = adresse;
		this.numeroSecuSocial = numeroSecuSocial;
		this.emailPro = emailPro;
		this.photo = photo;
		this.dateHeureCreation = dateHeureCreation;
		this.actif = actif;
		compteur++;
	}

	/**
	 * Constructeur
	 * @param matricule
	 * @param nom
	 * @param prenom
	 * @param dateNaissance
	 * @param adresse
	 * @param numeroSecuSocial
	 * @param emailPro
	 * @param photo
	 * @param dateHeureCreation
	 * @param actif
	 */
	public Collaborateur(String matricule, String nom, String prenom, LocalDate dateNaissance, String adresse,
			String numeroSecuSocial, String emailPro, String photo, ZonedDateTime dateHeureCreation, boolean actif) {
		this.matricule = matricule;
		this.nom = nom;
		this.prenom = prenom;
		this.dateNaissance = dateNaissance;
		this.adresse = adresse;
		this.numeroSecuSocial = numeroSecuSocial;
		this.emailPro = emailPro;
		this.photo = photo;
		this.dateHeureCreation = dateHeureCreation;
		this.actif = actif;
	}

	/** Getter
	 * @return the matricule
	 */
	public String getMatricule() {
		return matricule;
	}

	/** Setter
	 * @param matricule the matricule to set
	 */
	public void setMatricule(String matricule) {
		this.matricule = matricule;
	}

	/** Getter
	 * @return the nom
	 */
	public String getNom() {
		return nom;
	}

	/** Setter
	 * @param nom the nom to set
	 */
	public void setNom(String nom) {
		this.nom = nom;
	}

	/** Getter
	 * @return the prenom
	 */
	public String getPrenom() {
		return prenom;
	}

	/** Setter
	 * @param prenom the prenom to set
	 */
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	/** Getter
	 * @return the dateNaissance
	 */
	public LocalDate getDateNaissance() {
		return dateNaissance;
	}

	/** Setter
	 * @param dateNaissance the dateNaissance to set
	 */
	public void setDateNaissance(LocalDate dateNaissance) {
		this.dateNaissance = dateNaissance;
	}

	/** Getter
	 * @return the adresse
	 */
	public String getAdresse() {
		return adresse;
	}

	/** Setter
	 * @param adresse the adresse to set
	 */
	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}

	/** Getter
	 * @return the numeroSecuSocial
	 */
	public String getNumeroSecuSocial() {
		return numeroSecuSocial;
	}

	/** Setter
	 * @param numeroSecuSocial the numeroSecuSocial to set
	 */
	public void setNumeroSecuSocial(String numeroSecuSocial) {
		this.numeroSecuSocial = numeroSecuSocial;
	}

	/** Getter
	 * @return the emailPro
	 */
	public String getEmailPro() {
		return emailPro;
	}

	/** Setter
	 * @param emailPro the emailPro to set
	 */
	public void setEmailPro(String emailPro) {
		this.emailPro = emailPro;
	}

	/** Getter
	 * @return the photo
	 */
	public String getPhoto() {
		return photo;
	}

	/** Setter
	 * @param photo the photo to set
	 */
	public void setPhoto(String photo) {
		this.photo = photo;
	}

	/** Getter
	 * @return the dateHeureCreation
	 */
	public ZonedDateTime getDateHeureCreation() {
		return dateHeureCreation;
	}

	/** Setter
	 * @param dateHeureCreation the dateHeureCreation to set
	 */
	public void setDateHeureCreation(ZonedDateTime dateHeureCreation) {
		this.dateHeureCreation = dateHeureCreation;
	}

	/** Getter
	 * @return the actif
	 */
	public boolean isActif() {
		return actif;
	}

	/** Setter
	 * @param actif the actif to set
	 */
	public void setActif(boolean actif) {
		this.actif = actif;
	}

	/** Getter
	 * @return the bic
	 */
	public String getBic() {
		return bic;
	}

	/** Setter
	 * @param bic the bic to set
	 */
	public void setBic(String bic) {
		this.bic = bic;
	}

	/** Getter
	 * @return the iban
	 */
	public String getIban() {
		return iban;
	}

	/** Setter
	 * @param iban the iban to set
	 */
	public void setIban(String iban) {
		this.iban = iban;
	}

	/** Getter 
	 * @return the intitulePoste
	 */
	public String getIntitulePoste() {
		return intitulePoste;
	}

	/** Setter
	 * @param intitulePoste the intitulePoste to set
	 */
	public void setIntitulePoste(String intitulePoste) {
		this.intitulePoste = intitulePoste;
	}

	/** Getter
	 * @return the departement
	 */
	public String getDepartement() {
		return departement;
	}

	/** Setter
	 * @param departement the departement to set
	 */
	public void setDepartement(String departement) {
		this.departement = departement;
	}

	/** Getter
	 * @return the telephone
	 */
	public String getTelephone() {
		return telephone;
	}

	/** Setter
	 * @param telephone the telephone to set
	 */
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	/** Getter
	 * @return the civilite
	 */
	public String getCivilite() {
		return civilite;
	}

	/** Setter
	 * @param civilite the civilite to set
	 */
	public void setCivilite(String civilite) {
		this.civilite = civilite;
	}
	
	
}
