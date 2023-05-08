<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link href="Css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<style>
.container {
    margin-top: 50px;
}
.card {
    max-width: 500px;
    margin: 0 auto;
}
.card-header {
    background-color: #f2f2f2;
    font-size: 24px;
    font-weight: bold;
    text-align: center;
}
.control-label {
    font-weight: bold;
}
.input-text {
    border: none;
    background-color: transparent;
    color: #555;
}
.input-text[readonly] {
    cursor: text;
}
.btn-print {
    display: block;
    margin: 20px auto 0;
    max-width: 200px;
}
</style>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title>Autorisation Enseignant</title>
<link href="Css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script>
function hidePrintButton() {
    var printButton = document.getElementById("printButton");
    printButton.style.display = "none";
    window.print();
}
</script>
</head>
<body>
<%@include file="header.jsp" %>
<p></p>
<div class="container">
<div class="card">
  <div class="card-header">
    Autorisation Ajout Enseignant
  </div>
  <div class="card-body"> 
      <div class="form-group">
       <label class="control-label">ID :</label>
       <input type="text" name="Nom" class="form-control" value="${enseignant.id_enseignant }"readonly />          
       <label class="control-label">Nom Enseignant :</label>
       <input type="text" name="nom" class="form-control" value="${enseignant.nom}"readonly />
      </div>
      <div class="control-label">
       <label class="control-label">Prenom Enseignant :</label>
       <input type="text" name="prenom" class="form-control" value="${enseignant.prenom }"readonly />
      </div>
	<div class="control-label">
       <label class="control-label">Matricule Enseignant :</label>
       <input type="text" name="matricule" class="form-control" value="${enseignant.matricule }" readonly/>
      </div>
      <div class="form-group">
       <label class="control-label">Institute :</label>
       <input type="text" name="institut" class="form-control" value="${Autorisation.institut }"readonly/>
      </div>
      <div class="form-group">
       <label class="control-label">module :</label>
       <input type="text" name="module" class="form-control" value="${Autorisation.module }"readonly/>
      </div>
      <div class="form-group">
       <label class="control-label">matiere :</label>
       <input type="text" name="matiere" class="form-control" value="${Autorisation.matiere }"readonly/>
      </div>
      <div class="form-group">
       <label class="control-label">date :</label>
       <input type="date" name="date" class="form-control" value="${Autorisation.date }" readonly/>
      </div>
      
	
      
      
      <div class="control-label">
       <label class="control-label">Heures :</label>
       <input type="text" name="heur" class="form-control" value="${enseignant.heur}" readonly/>
      </div>
      
    
       </div>
      <button type="button" id="printButton" class="btn btn-primary" onclick="hidePrintButton()">Imprimer</button>
      
       </div>
       </div>
       </body>
</html>
<style>
  input[readonly] {
    cursor: text;
  }
</style>
