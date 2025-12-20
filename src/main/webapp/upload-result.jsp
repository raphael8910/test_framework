<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Resultat Upload</title>
    
</head>
<body>
    <%@ page import="java.util.Map" %>
    
    <h1>Upload reussi !</h1>
    
    <%
        Map<String, byte[]> fichiers = (Map<String, byte[]>) request.getAttribute("fichiers");
        String description = (String) request.getAttribute("description");
        Integer nombreFichiers = (Integer) request.getAttribute("nombreFichiers");
        Integer tailleTotal = (Integer) request.getAttribute("tailleTotal");
    %>
    
        <p><strong>Nombre de fichiers uploades :</strong> <%= nombreFichiers %></p>
        <p><strong>Taille totale :</strong> <%= tailleTotal %> bytes (<%= tailleTotal / 1024 %> KB)</p>
        <% if (description != null && !description.isEmpty()) { %>
            <p><strong>Description :</strong> <%= description %></p>
        <% } %>

        <h2>Fichiers recus :</h2>
        <%
            if (fichiers != null && !fichiers.isEmpty()) {
                for (Map.Entry<String, byte[]> entry : fichiers.entrySet()) {
                    String fileName = entry.getKey();
                    int fileSize = entry.getValue().length;
        %>
            <div class="file-item">
                <div class="file-name"><%= fileName %></div>
                <div class="file-size">Taille : <%= fileSize %> bytes (<%= fileSize / 1024 %> KB)</div>
            </div>
        <%
                }
            } else {
        %>
            <p>Aucun fichier uploade.</p>
        <%
            }
        %>
    
    <a href="${pageContext.request.contextPath}/fichiers/form">Retour au formulaire</a>
</body>
</html>