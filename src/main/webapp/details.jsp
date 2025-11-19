<!DOCTYPE html>
<html>
<head>
    <title>Details Etudiant</title>
</head>
<body>
<%
    String nom = (String )request.getAttribute("nom");
    String prenom = (String )request.getAttribute("prenom");
    int age = (int) request.getAttribute("age");

%>
    <h1>Informations de l'etudiant</h1>
    <p>Nom: <%=nom %></p>
    <p>Prenom: <%=prenom %></p>
    <p>Age: <%= age%> </p>
</body>
</html>