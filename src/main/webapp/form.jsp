<!DOCTYPE html>
<html>
<head>
    <title>Formulaire Etudiant</title>
</head>
<body>
    <h1>Inscription Etudiant</h1>
    <form action="${pageContext.request.contextPath}/etudiants/save_etudiant" method="get">
        <label>Nom : <input type="text" name="nom" /></label><br/>
        <label>Prenom : <input type="text" name="prenom" /></label><br/>
        <label>Age : <input type="number" name="age" /></label><br/>
        <button type="submit">Envoyer</button>
    </form>
</body>
</html>