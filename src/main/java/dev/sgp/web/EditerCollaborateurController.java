package dev.sgp.web;

import java.io.IOException;
import java.io.SequenceInputStream;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EditerCollaborateurController
 */
public class EditerCollaborateurController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String error = "Les paramètres suivants sont incorrects : ";
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
		}
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
