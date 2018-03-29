<%@ page import="dev.sgp.entite.Collaborateur"%>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	crossorigin="anonymous">
<title>Accueil</title>
</head>
<body>
	<div class="container-fluid">
		<nav class="navbar navbar-expand-lg navbar-light bg-light"> <a
			class="navbar-brand" href="index.html">Log</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="lister">Collaborateurs</a></li>
				<li class="nav-item"><a class="nav-link" href="statistiques.html">Statistiques</a></li>
				<li class="nav-item"><a class="nav-link" href="activites.html">Activités</a>
				</li>
			</ul>
		</div>
		</nav>
		<section> <article>
		<div class="col-sm-11 offset-sm-1 p-5">
			<div class="row">
				<% Collaborateur collaborateur = (Collaborateur)request.getAttribute("collaborateur");%>
				<div class="col-12 col-md-4">
					<div class="d-xl-none">
						<img src="<%=request.getContextPath()%><%=collaborateur.getPhoto()%>" class="rounded mx-auto d-block" alt="...">
					</div>
					<div class="d-none d-xl-block pt-5">
						<img src="<%=request.getContextPath()%><%=collaborateur.getPhoto()%>" class="rounded mx-auto d-block"alt="...">
					</div>
				</div>
				<div class="col-12 col-md-7">
					<form method="POST" action="editer">
						<div class="row">
							<div class="col-8">
								<h2><%=collaborateur.getNom()%> <%=collaborateur.getPrenom()%> - <%=collaborateur.getMatricule()%></h2>
							</div>
							<div class="col-4">
								<div class="form-check text-xl-left text-right p-2">
									<input type="checkbox" class="form-check-input" id="collaborateur"> 
									<label class="form-check-label" for="collaborateur">Desactivé</label>
								</div>
							</div>
						</div>
						<div id="accordion">
						<input type="hidden" id="inputMatricule" placeholder="Matricule" name="matricule" value="<%=collaborateur.getMatricule()%>">
							<div class="card">
								<div class="card-header" id="headingOne">
									<h5 class="mb-0">
										<button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
											Identité
										</button>
									</h5>
								</div>
								<div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
									<div class="card-body">
										<div class="form-group row">
											<label for="controlCivilite" class="col-sm-4 text-sm-right col-form-label">Civilité : </label>
											<div class="col-sm-8">
												<select class="form-control" id="controlCivilite" name="civilite">
													<option selected disabled hidden><%=collaborateur.getCivilite()%></option>
													<option>Monsieur</option>
													<option>Madame</option>
												</select>
												<div class="invalid-feedback">
													La civilité est obliquatoire
												</div>
											</div>
										</div>
										<div class="form-group row">
											<label for="inputNom" class="col-sm-4 text-sm-right col-form-label">Nom : </label>
											<div class="col-sm-8">
												<input type="text" class="form-control" id="inputNom" placeholder="Nom" readonly="readonly" value="<%=collaborateur.getNom()%>">
												<div class="invalid-feedback">
													Le nom est obliquatoire
												</div>
											</div>
										</div>
										<div class="form-group row">
											<label for="inputPrenom" class="col-sm-4 text-sm-right col-form-label">Prénom : </label>
											<div class="col-sm-8">
												<input type="text" class="form-control" id="inputPrenom" placeholder="Prénom" readonly="readonly" value="<%=collaborateur.getPrenom()%>">
												<div class="invalid-feedback">
													Le prénom est obliquatoire
												</div>
											</div>
										</div>
										<div class="form-group row">
											<label for="inputDateNaissance" class="col-sm-4 text-sm-right col-form-label">Date de naissance : </label>
											<div class="col-sm-8">
												<input type="date" class="form-control" id="inputDateNaissance" placeholder="Date de naissance" readonly="readonly" value="<%=collaborateur.getDateNaissance()%>">
												<div class="invalid-feedback">
													Le date de naissance est obliquatoire
												</div>
											</div>
										</div>
										<div class="form-group row">
											<label for="TextareaAdresse" class="col-sm-4 text-sm-right col-form-label">Adresse : </label>
											<div class="col-sm-8">
												<textarea class="form-control" id="TextareaAdresse" rows="3" placeholder="Adresse" readonly="readonly"><%=collaborateur.getAdresse()%></textarea>
												<div class="invalid-feedback">
													L'adresse est obliquatoire
												</div>
											</div>
										</div>
										<div class="form-group row">
											<label for="inputNumeroSecuSocial" class="col-sm-4 text-sm-right col-form-label">Numéro de sécurité social : </label>
											<div class="col-sm-8">
												<input type="text" class="form-control" id="inputNumeroSecuSocial" placeholder="Numéro de sécurité social" readonly="readonly" value="<%=collaborateur.getNumeroSecuSocial()%>">
												<div class="invalid-feedback">
													Le numéro de sécurité social est obliquatoire
												</div>
											</div>
										</div>
										<div class="form-group row">
											<label for="inputTelephone" class="col-sm-4 text-sm-right col-form-label">Téléphone : </label>
											<div class="col-sm-8">
												<input type="tel" class="form-control" id="inputTelephone" name="tel" placeholder="Téléphone" value="<%=collaborateur.getTelephone()%>">
												<div class="invalid-feedback">
													Le téléphone est obliquatoire
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="card">
								<div class="card-header" id="headingTwo">
									<h5 class="mb-0">
										<button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
											Poste
										</button>
									</h5>
								</div>
								<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
									<div class="card-body">
										<div class="form-group row">
											<label for="controlSelectDepartement" class="col-sm-4 text-sm-right col-form-label">Département : </label>
											<div class="col-sm-8">
												<select class="form-control" id="controlSelectDepartement" name="departement">
													<option selected disabled hidden><%=collaborateur.getDepartement()%></option>
						                      	<% 
					                         		List<String> listerDepartement = (List<String>)request.getAttribute("listerDepartement");
						                         	for(String str : listerDepartement){ %>
					                            	<option><%=str%></option>
					  							<%}%>
												</select>
												<div class="invalid-feedback">
													Le département est obliquatoire
												</div>
											</div>
										</div>
										<div class="form-group row">
											<label for="inputNom" class="col-sm-4 text-sm-right col-form-label">Nom :
											</label>
											<div class="col-sm-8">
												<input type="text" class="form-control" id="inputNomFonction" name="nomFonction" placeholder="Nom" value="<%=collaborateur.getIntitulePoste()%>">
												<div class="invalid-feedback">
													Le nom est obliquatoire
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="card">
								<div class="card-header" id="headingThree">
									<h5 class="mb-0">
										<button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
											Coordonnées Bancaires
										</button>
									</h5>
								</div>
								<div id="collapseThree" class="collapse"
									aria-labelledby="headingThree" data-parent="#accordion">
									<div class="card-body">
										<div class="form-group row">
											<label for="inputIBAN" class="col-sm-4 text-sm-right col-form-label">IBAN : </label>
											<div class="col-sm-8">
												<input type="text" class="form-control" id="inputIBAN" name="IBAN" placeholder="IBAN" value="<%=collaborateur.getIban()%>">
												<div class="invalid-feedback">
													L'IBAN est obliquatoire
												</div>
											</div>
										</div>
										<div class="form-group row">
											<label for="inputBIC" class="col-sm-4 text-sm-right col-form-label">BIC : </label>
											<div class="col-sm-8">
												<input type="text" class="form-control" id="inputBIC" name="BIC" placeholder="BIC" value="<%=collaborateur.getBic()%>">
												<div class="invalid-feedback">
													Le BIC est obliquatoire
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-12 text-right pr-0 pt-3">
							<button class="btn btn-primary" id=modifCollaboratuer data-toggle="modal" data-target="#exampleModal" type="button">
								Sauvegarder
							</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		</article> </section>
	</div>
	<script src="<%=request.getContextPath()%>/JS/testInput.js"></script>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>