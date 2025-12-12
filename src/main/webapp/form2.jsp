<!DOCTYPE html>
<html>
<head>
    <title>Formulaire Map Etudiant</title>
</head>
<body>
    <h1>ETU3159</h1>
    <h1>Inscription Etudiant (Map)</h1>
    <form action="${pageContext.request.contextPath}/etudiants/detailsMap" method="get">
        <label>Nom : <input type="text" name="nom" /></label><br/>
        <label>Prenom : <input type="text" name="prenom" /></label><br/>
        <label>Age : <input type="number" name="age" /></label><br/>
        <button type="submit">Envoyer</button>
    </form>
</body>
</html>