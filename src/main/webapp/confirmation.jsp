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
<title>Confirmation Enseignant</title>
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
<div class="container">
<div class="card">
  <div class="card-header">
    Confirmation Ajout Enseignant
  </div>
  <div class="card-body"> 
      <div class="form-group">
       <label class="control-label">ID :</label>
       <input type="text" name="Nom" class="form-control" value="${Enseignant.id_enseignant }" readonly/>          
       <label class="control-label">Nom Enseignant :</label>
       <input type="text" name="nom" class="form-control" value="${Enseignant.nom }" readonly/>
      </div>
      <div class="control-label">
       <label class="control-label">Prenom Enseignant :</label>
       <input type="text" name="prenom" class="form-control" value="${Enseignant.prenom }" readonly/>
      </div>
	<div class="control-label">
       <label class="control-label">Matricule Enseignant :</label>
       <input type="text" name="matricule" class="form-control" value="${Enseignant.matricule }" readonly/>
      </div>
      
	<div class="control-label">
       <label class="control-label">Statut Enseignant :</label>
       <input type="text" name="statut" class="form-control" value="${Enseignant.statut }" readonly/>
      </div>
      
      <div class="control-label">
       <label class="control-label">Heures :</label>
       <input type="text" name="heur" class="form-control" value="0" readonly/>
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
  <style>
.container {
    margin-top: 50px;
}
.card {
    max-width: 500px;
    margin: 0 auto;
}
.card-header {
    background-color: #your_color_code_here;
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
</style>
