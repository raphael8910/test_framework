<%@ page import="com.projet_framework.utility.ParameterConverter" %>
<!DOCTYPE html>
<html>
<head>
    <title>Details Etudiant</title>
</head>
<body>
<%
    // String nom = (String )request.getAttribute("nom");
    
    String nom = ParameterConverter.getAttributeWithType(request,"nom",String.class);
    String prenom = ParameterConverter.getAttributeWithType(request,"prenom",String.class);
    int age = ParameterConverter.getAttributeWithType(request, "age", Integer.class);
    // double poids = ParameterConverter.getDoubleAttribute(request, "poids");

    // String prenom = (String )request.getAttribute("prenom");
                        
    // int age = Integer.parseInt((String)request.getAttribute("age"));

%>
    <h1>ETU3159</h1>
    <h1>Informations de l'etudiant</h1>
    <p>Nom: <%=nom %></p>
    <p>Prenom: <%=prenom %></p>
    <p>Age: <%= age%> </p>
    <p>Poids: ${poids}</p>
    
</body>
</html>