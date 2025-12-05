<!DOCTYPE html>
<html>
<head>
    <title>Formulaire Etudiant</title>
</head>
<body>
    <h1>Inscription Etudiant</h1>
    <form action="${pageContext.request.contextPath}/etudiants/detailsMap" method="get">
        <label>Nom : <input type="text" name="nom" /></label><br/>
        <label>Prenom : <input type="text" name="prenom" /></label><br/>
        <label>Age : <input type="number" name="age" /></label><br/>
        <label >Poids : <input type="number" step="0.01" name="poids"></label>
        <button type="submit">Envoyer</button>
    </form>
</body>
</html>