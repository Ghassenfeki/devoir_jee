<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title>Insert title here</title>
<link href="Css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
<% String alertMessage = (String) request.getAttribute("alertMessage");
   if (alertMessage != null) {
       out.println("<script>alert('" + alertMessage + "');</script>");
   }
%>
<%@include file="header.jsp" %>
<p></p>

<div class="container">
<div class="card">

  <div class="card-header">
    autorisation des Enseignant
  </div>
  <div class="card-body">
      <form action="autorisation.do" method="post" >
      <div class="form-group"  >
       <label class="control-label">ID Enseignant :</label>
       <input type="text" name="enseignant_id" class="form-control" value="${enseignant.id_enseignant}"/>
      </div>
        <div class="form-group"  >
       <label class="control-label">NOM :</label>
       <input type="text" name="nom" class="form-control" value="${enseignant.nom}"/>
      </div>
        <div class="form-group"  >
       <label class="control-label">Prenom :</label>
       <input type="text" name="prenom" class="form-control" value="${enseignant.prenom}"/>
      </div>
      <div class="form-group"  >
       <label class="control-label">matricule :</label>
       <input type="text" name="matricule" class="form-control" value="${enseignant.matricule}"/>
      </div>
       <div class="form-group">
       <label class="control-label">Institute :</label>
       <input type="text" name="institut" class="form-control" />
      </div>
      <div class="form-group">
       <label class="control-label">module :</label>
       <input type="text" name="module" class="form-control" />
      </div>
      <div class="form-group">
       <label class="control-label">matiere :</label>
       <input type="text" name="matiere" class="form-control"/>
      </div>
      <div class="form-group">
       <label class="control-label">date :</label>
       <input type="date" name="date" class="form-control"/>
      </div>
       <div class="form-group"  hidden >
       <label class="control-label">heure :</label>
       <input type="text" name="heurre" class="form-control" value="${enseignant.heur}"/>
      </div>
      <div class="form-group" >
       <label class="control-label">Heures :</label>
 <input type="text" name ="nb_heure" id="heurInput" onkeyup="checkHeurValue(event)" class="form-control" >

      <!--  <input type="text" name="heur" class="form-control" value=""/>--> 
      </div>
<button onclick="/recupens.do" type="submit" class="btn btn-success">Confirmer</button>
      </div>
      </form>     
  </div>
</div>
</div>
</body>
</html>

<script>
	function checkHeurValue(event) {
		var heurInput = document.getElementById("heurInput");
		var heur = heurInput.value;
		if (heur > 4 ) {
			alert("Heur value is greater than 4");
		}
	}
</script>

<style>
  input[readonly] {
    cursor: text;
  }
  
  /* Set the background color to yellow */
body {
 
}

/* Set the text color to blue */
body, input, select, textarea {
  color: #2196F3;
}

/* Set the header background color to blue */
.card-header {
  background-color: #2196F3;
  color: #FFFFFF;
}

/* Set the button background color to blue */
.btn-primary {
  background-color: #2196F3;
  border-color: #0000FF;
}

/* Set the button text color to white */
.btn-primary:hover {
  background-color: #FFFFFF;
  color: #2196F3;
}

/* Set the form control background color to white */
.form-control {
  background-color: #FFFFFF;
}

/* Add some padding to the top and bottom of the page */
.container {
  padding-top: 20px;
  padding-bottom: 20px;
}

/* Add some margin to the top and bottom of the card */
.card {
  margin-top: 20px;
  margin-bottom: 20px;
}
  
</style>
