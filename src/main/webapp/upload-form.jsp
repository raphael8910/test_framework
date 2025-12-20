<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Upload de Fichiers</title>
    
</head>
<body> 
    <h1>Upload de Fichiers</h1>
    
    <form action="${pageContext.request.contextPath}/fichiers/upload" 
          method="post" 
          enctype="multipart/form-data">
        
        <p>Selectionner des fichiers :</p>
        <input type="file" name="fichier1" required />
        
        <p>Selectionner un autre fichier (optionnel) :</p>
        <input type="file" name="fichier2" />
        
        <p>Selectionner encore un fichier (optionnel) :</p>
        <input type="file" name="fichier3" />
        
        <p>Description :</p>
        <textarea name="description" rows="4" placeholder="Decrivez les fichiers uploades..."></textarea>
        
        <button type="submit">Envoyer les fichiers</button>
    </form>
</body>
</html>