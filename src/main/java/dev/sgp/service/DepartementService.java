/**
 * 
 */
package dev.sgp.service;

import java.util.ArrayList;
import java.util.List;


/**
 * @author Alexis Darcy
 *
 */
public class DepartementService {

	List<String> listeDepartement = new ArrayList<>();
	
	public DepartementService() {
		listeDepartement.add("Comptabilite");
		listeDepartement.add("Ressources Humaines");
		listeDepartement.add("Informatique");
		listeDepartement.add("Administratif");
	}

	public List<String> listerDepartements() {
		return listeDepartement;
	}

	public void sauvegarderDepartement(String depart) {
		listeDepartement.add(depart);
	}

}
