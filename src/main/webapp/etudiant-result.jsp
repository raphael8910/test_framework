<%@ page import="com.app_test.Etudiant"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<%
    Etudiant etudiant = (Etudiant) request.getAttribute("etudiant");
%>
<body>
    <h1>Information de l'etudiant</h1>
    <p>Nom : <%=etudiant.getNom() %></p>
    <p>Prenom : <%=etudiant.getPrenom() %></p>
    <p>Age : <%=etudiant.getAge() %></p>
</body>
</html>