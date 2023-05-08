<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title>Insert title here</title>
<link href="Css/bootstrap.min.css" rel="stylesheet" type="text/css" />

</head>
<body>
<%@include file="header.jsp" %>
<div class="container">
<div class="card">
  <div class="card-header">
    Modification des Enseignant
  </div>
  <div class="card-body">
      <form action="updateEnseignant.do" method="post" >
      <div hidden class="form-group"  >
       <label class="control-label">ID Enseignant :</label>
       <input type="text" name="id" class="form-control" value="${enseignant.id_enseignant}"/>
      </div>
      <div class="form-group">
       <label class="control-label">Nom :</label>
       <input type="text" name="nom" class="form-control" value="${enseignant.nom}"/>
      </div>
      <div class="form-group">
       <label class="control-label">Prenom :</label>
       <input type="text" name="prenom" class="form-control" value="${enseignant.prenom}"/>
      </div>
      <div class="form-group">
       <label class="control-label">Matricule :</label>
       <input type="text" name="matricule" class="form-control" value="${enseignant.matricule}"/>
      </div>
      <div class="form-group">
       <label class="control-label">Statut :</label>
       <input type="text" name="statut" class="form-control" value="${enseignant.statut}"/>
      </div>
      
      <div class="form-group">
       <label class="control-label">heur :</label>
       <input type="text" name="heur" class="form-control" value="${enseignant.heur}"/>
      </div>
      <div>
        <button type="submit" class="btn btn-primary">Modifier</button>
      </div>
      </form>     
  </div>
</div>
</div>
</body>
</html>
<style>
.card-header {
    background-color: #32CD32;
}
</style>