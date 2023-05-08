<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title>Insert title here</title>
<link href="Css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="Css/fontawesome.min.css" rel="stylesheet" type="text/css">
</head>
<body>
<%@include file="header.jsp" %>
<div class="container">
<div class="card">
  <div class="card-header">
    Recherche des Enseignant
  </div>
  <div class="card-body">
      <form action="chercherensgn.do" method="get">
        <label>Mot Clé</label>
        <input type="text" name="motCle1" value="${model1.motCle1}"/>
        <button type="submit" class="btn btn-primary">Chercher</button>
      </form>     
      <table class="table table-striped">
        <tr>
	          <th>ID</th>
	          <th>Nom</th>
	          <th>Prenom</th>
	          <th>Matricule</th>
	          <th>Statut</th>
	          <th>Heures</th>  
	          <th> NB Heures Restant</th>
	          <th>Suppression
	          <th>Edition</th>
	          <th> autorisation</th>  
         </tr>
	<c:forEach items="${model1.enseignants}" var="en">
   	<tr>
      <td>${en.id_enseignant}</td>
      <td>${en.nom}</td>
      <td>${en.prenom}</td>
      <td>${en.matricule}</td>
      <td>${en.statut}</td>
      <td>${en.heur}</td>
	  <td>${208 - en.heur}</td>
      <td><a onclick="return confirm('Etes-vous sûr ?')" href="supprimerEnseignant.do?id=${en.id_enseignant}" class="btn btn-outline-danger" style="text-decoration:none"><i class="fa fa-trash"></i>Supprimer</a></td>
      <td><a href="editerEnseignant.do?id=${en.id_enseignant}" class="btn btn-outline-success" style="text-decoration:none">Edit</a></td>
	  <td${en.heur > 208 ? ' style="display:none"' : ''}><a href="autEnse.do?id=${en.id_enseignant}" class="btn btn-outline-info" style="text-decoration:none">autorisation</a></td>
   </tr>
</c:forEach>
</table>
</div>
</div>
</div>
</body>
</html>
<style>
    table {
    width: 100%;
    border-collapse: collapse;
}

th, td {
    padding: 8px;
    text-align: left;
    border-bottom: 1px solid #ddd;
}

th {
    background-color: #FFC107; /* Yellow */
    color: white;
}

tr:hover {
    background-color: #f5f5f5;
}

.card {
    margin-top: 20px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-shadow: 0 2px 2px rgba(0, 0, 0, 0.3);
}

.card-header {
    background-color: #2196F3; /* Blue */
    color: white;
    padding: 10px;
}

.card-body {
    padding: 10px;
}

label {
    display: inline-block;
    width: 100px;
    margin-right: 10px;
}

input[type="text"] {
    width: 200px;
    padding: 5px;
    border-radius: 4px;
    border: 1px solid #ccc;
}

button[type="submit"] {
    padding: 5px 10px;
    background-color: #2196F3; /* Blue */
    color: white;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

a {
    color: #007bff;
    text-decoration: none;
}

a:hover {
    text-decoration: underline;
}

.hide {
    display: none;
}
    </style>
