package dev.sgp.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.entite.Collaborateur;
import dev.sgp.service.CollaborateurService;
import dev.sgp.service.DepartementService;
import dev.sgp.util.Constantes;

/**
 * Servlet implementation class EditerCollaborateurController
 */
public class EditerCollaborateurController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	CollaborateurService collabService = Constantes.COLLAB_SERVICE;
	DepartementService departService = Constantes.DEPART_SERVICE;
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String matricule = request.getParameter("matricule");
		Collaborateur collaborateur = new Collaborateur();		
		for(Collaborateur c : collabService.listerCollaborateurs()){
			if(c.getMatricule().equals(matricule)){
				collaborateur = c;
			}
		}
		request.setAttribute("collaborateur", collaborateur);
		request.setAttribute("listerDepartement", departService.listerDepartements());
		request.getRequestDispatcher("/WEB-INF/views/collab/editerCollaborateurs.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String error = "Les paramètres suivants sont incorrects : ";
		if (request.getParameter("civilite") == null || request.getParameter("tel") == null
				|| request.getParameter("departement") == null || request.getParameter("nomFonction") == null
				|| request.getParameter("IBAN") == null || request.getParameter("BIC") == null) {
			if (request.getParameter("civilite") == null) {
				error += "civilite";
			}
			if (request.getParameter("tel") == null) {
				error += "tel";
			}
			if (request.getParameter("departement") == null) {
				error += "departement";
			}
			if (request.getParameter("nomFonction") == null) {
				error += "nomFonction";
			}
			if (request.getParameter("IBAN") == null) {
				error += "IBAN";
			}
			if (request.getParameter("BIC") == null) {
				error += "BIC";
			}
			response.sendError(400, error);
		}else{
			String matricule = request.getParameter("matricule");
			String civilite = request.getParameter("civilite");
			String tel = request.getParameter("tel");
			String departement = request.getParameter("departement");
			String nomFonction = request.getParameter("nomFonction");
			String IBAN = request.getParameter("IBAN");
			String BIC = request.getParameter("BIC");
		
			
			for(Collaborateur c : collabService.listerCollaborateurs()){
				if(c.getMatricule().equals(matricule)){
					c.setDepartement(departement); c.setIntitulePoste(nomFonction);
					c.setIban(IBAN); c.setBic(BIC); c.setTelephone(tel); c.setCivilite(civilite);
				}
			}
			request.setAttribute("listCollaborateur", collabService.listerCollaborateurs());
			request.setAttribute("listerDepartement", departService.listerDepartements());
			request.getRequestDispatcher("/WEB-INF/views/collab/listerCollaborateurs.jsp").forward(request, response);
		}
	}
}
