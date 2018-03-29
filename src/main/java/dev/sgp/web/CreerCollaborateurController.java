package dev.sgp.web;

import java.io.IOException;
import java.time.LocalDate;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

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
public class CreerCollaborateurController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	CollaborateurService collabService = Constantes.COLLAB_SERVICE;
	DepartementService departService = Constantes.DEPART_SERVICE;
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/*String error = "Les paramètres suivants sont incorrects : ";
		if (request.getParameter("matricule") == null || request.getParameter("titre") == null
				|| request.getParameter("nom") == null || request.getParameter("prenom") == null) {
			if (request.getParameter("matricule") == null) {
				error += "matricule ";
			}
			if (request.getParameter("titre") == null) {
				error += "titre ";
			}
			if (request.getParameter("nom") == null) {
				error += "nom ";
			}
			if (request.getParameter("prenom") == null) {
				error += "prenom";
			}
			response.sendError(400, error);
		} else {
			String matriculeParam = request.getParameter("matricule");
			String titreParam = request.getParameter("titre");
			String nomParam = request.getParameter("nom");
			String prenomParam = request.getParameter("prenom");
			response.setStatus(201);
			response.getWriter()
					.write("<h1>Creation d'un collaborateur avec les informations suivantes : </h1>" 
							+"<ul>" + "<li> Matricule = " + matriculeParam + ", titre = " 
							+ titreParam + ", nom = " + nomParam + ", prenom = " + prenomParam 
							+ "</li>" + "</ul>");
		}*/
		request.getRequestDispatcher("/WEB-INF/views/collab/creerCollaborateurs.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String error = "Les paramètres suivants sont incorrects : ";
		if (request.getParameter("nom") == null || request.getParameter("prenom") == null
				|| request.getParameter("dateNaissance") == null || request.getParameter("adresse") == null
				|| request.getParameter("numeroSecuSocial") == null) {
			if (request.getParameter("nom") == null) {
				error += "nom ";
			}
			if (request.getParameter("prenom") == null) {
				error += "prenom ";
			}
			if (request.getParameter("dateNaissance") == null) {
				error += "dateNaissance ";
			}
			if (request.getParameter("adresse") == null) {
				error += "adresse";
			}
			if (request.getParameter("numeroSecuSocial") == null) {
				error += "numeroSecuSocial";
			}
			response.sendError(400, error);
		}else{
			List<Collaborateur> collaborateurs = collabService.listerCollaborateurs();
			String nom = request.getParameter("nom");
			String prenom = request.getParameter("prenom");
			String date = request.getParameter("dateNaissance");
			String adresse = request.getParameter("adresse");
			String numeroSecuSocial = request.getParameter("numeroSecuSocial");
			String email = nom.toLowerCase() + "." + prenom.toLowerCase() + "@societe.com";
			String photo = "/image/Photo.jpg";
			
			ZonedDateTime dateCreation = ZonedDateTime.now();
		
			LocalDate dateNaissance = LocalDate.parse(date, DateTimeFormatter.ofPattern("yyyy-MM-dd"));
			
			if(numeroSecuSocial.length() == 15 && numeroSecuSocial.matches("\\d+")){
				
				collaborateurs.add(new Collaborateur(nom, prenom, dateNaissance, adresse, numeroSecuSocial, email, photo, dateCreation, true));
			
				request.setAttribute("listCollaborateur", collabService.listerCollaborateurs());
				request.setAttribute("listerDepartement", departService.listerDepartements());
				request.getRequestDispatcher("/WEB-INF/views/collab/listerCollaborateurs.jsp").forward(request, response);
					
			}else{
				
				response.sendError(400,"le numéro de sécurité social est invalide");
				
			}
		}
	}
}
