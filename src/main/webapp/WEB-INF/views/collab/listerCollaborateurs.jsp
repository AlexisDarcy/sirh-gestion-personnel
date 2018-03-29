<%@ page import="dev.sgp.entite.Collaborateur"%>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" crossorigin="anonymous">
    <title>Accueil</title>
</head>
<body>
    <div class="container-fluid">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="index.html">Log</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="lister">Collaborateurs<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="statistiques.html">Statistiques</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="activites.html">Activités</a>
                    </li>
                </ul>
            </div>
        </nav>
        <section>
            <article>
                <div class="row">
                    <div class="col-xl-11 col-md-11 col-11 text-right mt-1">
                        <a href="creer" class="btn btn-secondary">Ajouter un nouveau collaborateur</a>
                    </div>
                </div>
            </article>
            <article>
                <div class="row">
                    <div class="col-3 offset-1"> 
                        <h2>Les collaborateurs</h2>
                    </div>
                </div>
            </article>
            <article>
                <div class="row">
                    <div class="col-xl-3 offset-xl-1 text-xl-right"> 
                        <p>Rechercher un nom ou un prénom qui commence par : </p>
                    </div>
                    <div class="col-xl-3">
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" name="saisie" id="saisie">
                            <div class="input-group-append">
                                <button class="btn btn-outline-secondary" type="button">Rechercher</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 offset-1">
                        <div class="form-check text-xl-left text-right">
                            <input type="checkbox" class="form-check-input" id="collaborateur">
                            <label class="form-check-label" for="collaborateur">voir les collaborateurs désactivés</label>
                        </div>
                    </div>
                </div>
            </article>
            <article>
                <div class="row pl-5">
                    <div class="col-xl-2 offset-xl-2 text-xl-right">
                        <p>Filtrer par departement :</p>
                    </div>
                    <div class="col-xl-2">
                        <select class="form-control" id="controlSelectDepartement">
                        	<option>Toute</option>
                         	<% 
                         		List<String> listerDepartement = (List<String>)request.getAttribute("listerDepartement");
	                         	for(String str : listerDepartement){ %>
                            	<option><%=str%></option>
  							<%}%>
                        </select>
                    </div>
                </div>
            </article>
            <article>
                <div class="row" id="index">
	               	<%
	               		List<Collaborateur> listCollaborateurs = (List<Collaborateur>)request.getAttribute("listCollaborateur");
	               		for(Collaborateur c : listCollaborateurs){ %>
	               			<div class="col-xl-3 col-lg-6 offset-xl-1 col-md-6 col-12 offset-1 pt-5">
					            <div class="card" style="width: 18rem;">
					                  <div class="card-header">
					                      <h5 class="card-title"><%=c.getNom()%> <%=c.getPrenom()%></h5>
					                  </div>                            
					                  <img class="card-img-top" src="<%= request.getContextPath() + c.getPhoto() %>" alt="Card image cap">
					                  <div class="card-body">
					                      <p><label>Matricule : </label>  <%=c.getMatricule()%></p>
					                      <p><label>Numéro de sécurité social : </label>   <%= c.getNumeroSecuSocial()%></p>
					                      <p><label>Email : </label>   <%= c.getEmailPro() %></p>
					                      <p><label>Adresse : </label>   <%= c.getAdresse() %></p>
					                      <div class="text-right"><a href="editer?matricule=<%= c.getMatricule()%>" class="btn btn-primary">Editer</a></div>
					                  </div>
					              </div>
					          </div>
	               		<%}%>
                </div>
            </article>
        </section>
    </div>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>