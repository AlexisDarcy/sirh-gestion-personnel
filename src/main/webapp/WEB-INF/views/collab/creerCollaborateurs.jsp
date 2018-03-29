<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE>
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
                    <li class="nav-item">
                        <a class="nav-link" href="lister">Collaborateurs</a>
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
                <div class="col-sm-11 offset-sm-1 pt-3 pl-3">
                    <h2>Nouveau collaborateur</h2>
                    <div class="col-sm-10 offset-sm-1">
                        <form method="POST" action="creer" accept-charset="UTF-8">
                            <div class="form-group row p-3">
                                <label for="inputNom" class="col-sm-2 col-form-label">Nom : </label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="inputNom" name="nom" placeholder="Nom">
                                    <div class="invalid-feedback">
                                        Le nom est obliquatoire
                                    </div>
                                </div>
                            </div>
                            <div class="form-group row p-3">
                                <label for="inputPrenom" class="col-sm-2 col-form-label">Prénom : </label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="inputPrenom" name="prenom" placeholder="Prénom">
                                    <div class="invalid-feedback">
                                        Le prénom est obliquatoire
                                    </div>
                                </div>
                            </div>
                            <div class="form-group row p-3">
                                <label for="inputDateNaissance" class="col-sm-2 col-form-label">Date de naissance : </label>
                                <div class="col-sm-8">
                                    <input type="date" class="form-control" id="inputDateNaissance" name="dateNaissance" placeholder="Date de naissance">
                                    <div class="invalid-feedback">
                                        Le date de naissance est obliquatoire
                                    </div>
                                </div>
                            </div>
                            <div class="form-group row p-3">
                                <label for="TextareaAdresse" class="col-sm-2 col-form-label">Adresse : </label>
                                <div class="col-sm-8">
                                    <textarea class="form-control" id="TextareaAdresse" rows="3" name="adresse" placeholder="Adresse"></textarea>
                                    <div class="invalid-feedback">
                                        L'adresse est obliquatoire
                                    </div>
                                </div>
                            </div>
                            <div class="form-group row p-3">
                                <label for="inputNumeroSecuSocial" class="col-sm-2 col-form-label">Numéro de sécurité social : </label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="inputNumeroSecuSocial" name="numeroSecuSocial" placeholder="Numéro de sécurité social">
                                    <div class="invalid-feedback">
                                        Le numéro de sécurité social est obliquatoire
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-10 text-right p-3">
                                <button class="btn btn-primary" id="creerCollaboratuer" type="button">Créer</button>
                            </div>

                            <!-- Modal -->
                            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                        <h5 class="modal-title" id="ModalLabel">Création d'un nouveau collaborateur</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                        </div>
                                        <div class="modal-body">
                                        <p>Vous êtes sur le point de creer un nouveau collaborateur</p>
                                        <p>Nom : <span id="spanNom"></span></p>
                                        <p>Prénom : <span id="spanPrenom"></span></p>
                                        <p>Date de naissance : <span id="spanDateNaissance"></span></p>
                                        <p>Adresse : <span id="spanAdresse"></span></p>
                                        <p>Numéro de Sécurité sociale : <span id="spanNumSecuSocial"></span></p>
                                        </div>
                                        <div class="modal-footer">
                                        <button type="button" class="btn btn-danger" data-dismiss="modal">Annuler</button>
                                        <button type="button" class="btn btn-success" data-dismiss="modal" id="modalValider">Valider</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </article>
        </section>
    </div>
    <script src="<%=request.getContextPath()%>/JS/testInput.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>