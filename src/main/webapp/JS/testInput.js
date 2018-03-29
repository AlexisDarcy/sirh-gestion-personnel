if(document.querySelector('#creerCollaboratuer') != null){
  document.querySelector('#creerCollaboratuer').addEventListener('click', function(evt){
    if(document.querySelector('#inputNom').value == "" || document.querySelector('#inputPrenom').value == "" || 
          document.querySelector('#inputDateNaissance').value == ""|| document.querySelector('#TextareaAdresse').value == "" || 
          document.querySelector('#inputNumeroSecuSocial').value == ""){
    	var lesErrors;
	    if(document.querySelector('#inputNom').value == ""){
	    	lesErrors = document.querySelector("#inputNom").classList.add('is-invalid');
	    }else{
	    	lesErrors = document.querySelector("#inputNom").classList.remove('is-invalid');
	    }
	    if(document.querySelector('#inputPrenom').value == ""){
	    	lesErrors = document.querySelector("#inputPrenom").classList.add('is-invalid');
	    }else{
	    	lesErrors = document.querySelector("#inputPrenom").classList.remove('is-invalid');
	    }
		if(document.querySelector('#inputDateNaissance').value == ""){
	    	lesErrors = document.querySelector("#inputDateNaissance").classList.add('is-invalid');
		}else{
	    	lesErrors = document.querySelector("#inputDateNaissance").classList.remove('is-invalid');
	    }
		if(document.querySelector('#TextareaAdresse').value == ""){
		   	lesErrors = document.querySelector("#TextareaAdresse").classList.add('is-invalid');
		}else{
	    	lesErrors = document.querySelector("#TextareaAdresse").classList.remove('is-invalid');
	    }
		if(document.querySelector('#inputNumeroSecuSocial').value == ""){
		   	lesErrors = document.querySelector("#inputNumeroSecuSocial").classList.add('is-invalid');
		}else{
	    	lesErrors = document.querySelector("#inputNumeroSecuSocial").classList.remove('is-invalid');
	    }
    }else{

      var nom = document.querySelector("#inputNom").value;
      var prenom = document.querySelector("#inputPrenom").value;
      var dateNaissance = document.querySelector("#inputDateNaissance").value;
      var adresse = document.querySelector("#TextareaAdresse").value;
      var numeroSecuSocial = document.querySelector("#inputNumeroSecuSocial").value;
  
      document.querySelector("#spanNom").innerText = nom;
      document.querySelector("#spanPrenom").innerText = prenom;
      document.querySelector("#spanDateNaissance").innerText = dateNaissance;
      document.querySelector("#spanAdresse").innerText = adresse;
      document.querySelector("#spanNumSecuSocial").innerText = numeroSecuSocial;
  
      $("#myModal").modal();
    }
  });
};

if(document.querySelector('#modifCollaboratuer') != null){
  document.querySelector('#modifCollaboratuer').addEventListener('click', function(evt){
	
  if( document.querySelector('#controlCivilite').value == "" ||
	  document.querySelector('#inputTelephone').value == ""|| document.querySelector('#controlSelectDepartement').value == "" ||
	  document.querySelector('#inputNomFonction').value == "" ||  document.querySelector('#inputIBAN').value == "" ||
	  document.querySelector('#inputBIC').value == ""){
			var lesErrors;
		    if(document.querySelector('#controlCivilite').value == ""){
		    	lesErrors = document.querySelector("#controlCivilite").classList.add('is-invalid');
		    }else{
		    	lesErrors = document.querySelector("#controlCivilite").classList.remove('is-invalid');
		    }
			if(document.querySelector('#inputTelephone').value == ""){
			   	lesErrors = document.querySelector("#inputTelephone").classList.add('is-invalid');
			}else{
		    	lesErrors = document.querySelector("#inputTelephone").classList.remove('is-invalid');
		    }
			if(document.querySelector('#controlSelectDepartement').value == ""){
			   	lesErrors = document.querySelector("#controlSelectDepartement").classList.add('is-invalid');
			}else{
		    	lesErrors = document.querySelector("#controlSelectDepartement").classList.remove('is-invalid');
		    }
			if(document.querySelector('#inputNomFonction').value == ""){
			   	lesErrors = document.querySelector("#inputNomFonction").classList.add('is-invalid');
			}else{
		    	lesErrors = document.querySelector("#inputNomFonction").classList.remove('is-invalid');
		    }
			if(document.querySelector('#inputIBAN').value == ""){
			   	lesErrors = document.querySelector("#inputIBAN").classList.add('is-invalid');
			}else{
		    	lesErrors = document.querySelector("#inputIBAN").classList.remove('is-invalid');
		    }
			if(document.querySelector('#inputBIC').value == ""){
			   	lesErrors = document.querySelector("#inputBIC").classList.add('is-invalid');
			}else{
		    	lesErrors = document.querySelector("#inputBIC").classList.remove('is-invalid');
		    } 
  		}else{
  			document.forms[0].submit();
  		}
  });
};

if(document.querySelector('#modalValider') != null){
  document.querySelector('#modalValider').addEventListener('click', function(evt){
	  document.forms[0].submit();
  });
}