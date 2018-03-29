package dev.sgp.web;

import java.io.IOException;
import java.time.LocalDate;
import java.time.ZonedDateTime;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.entite.Collaborateur;
import dev.sgp.service.CollaborateurService;
import dev.sgp.service.DepartementService;
import dev.sgp.util.Constantes;

/**
 * Servlet implementation class ListerCollaborateursController
 */
public class ListerCollaborateursController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	// recuperation du serviceprivate 
	CollaborateurService collabService = Constantes.COLLAB_SERVICE;
	DepartementService departService = Constantes.DEPART_SERVICE;
	
	{
		collabService.listerCollaborateurs().add(new Collaborateur("Durant", "Jean", LocalDate.of(1850, 04, 24) , 
				"6 Avenue du Petit Trianon, 44800 Saint-Herblain", "152452154525471", "durant.jean@societe.com", 
				"/image/Photo.jpg", ZonedDateTime.now(), true));
		collabService.listerCollaborateurs().add(new Collaborateur("Dupont", "Jean", LocalDate.of(1850, 04, 24) , 
				"6 Avenue du Petit Trianon, 44800 Saint-Herblain", "152452154525471", "dupont.jean@societe.com", 
				"/image/Photo.jpg", ZonedDateTime.now(), true));
		collabService.listerCollaborateurs().add(new Collaborateur("Doe", "John", LocalDate.of(1850, 04, 24) , 
				"6 Avenue du Petit Trianon, 44800 Saint-Herblain", "152452154525471", "doe.john@societe.com", 
				"/image/Photo.jpg", ZonedDateTime.now(), true));
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/*
		 * // recupere la valeur d'un parametre dont le nom est avecPhoto String
		 * avecPhotoParam = request.getParameter("avecPhoto"); // recupere la
		 * valeur d'un parametre dont le nom est departement String
		 * departementParam = request.getParameter("departement");
		 * response.setContentType("text/html"); // code HTML ecrit dans le
		 * corps de la reponse
		 * response.getWriter().write("<h1>Liste des collaborateurs</h1>" +
		 * "<ul>" + "<li>avecPhoto=" + avecPhotoParam + "</li>" +
		 * "<li>departement=" + departementParam + "</li>" + "</ul>");
		 */
		// utilisation du service
		request.setAttribute("listCollaborateur", collabService.listerCollaborateurs());
		request.setAttribute("listerDepartement", departService.listerDepartements());
		request.getRequestDispatcher("/WEB-INF/views/collab/listerCollaborateurs.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
