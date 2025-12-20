package com.app_test;
import java.util.Map;

import com.projet_framework.annotation.method.GetUrl;
import com.projet_framework.annotation.method.PostUrl;
import com.projet_framework.annotation.type.Controller;
import com.projet_framework.utility.ModelView;

@Controller(url = "/fichiers")
public class UploadController {
    
    @GetUrl(url = "/form")
    public ModelView showForm() {
        return new ModelView("upload-form.jsp");
    }
    
    @PostUrl(url = "/upload")
    public ModelView uploadFiles(Map<String, byte[]> fichiers, String description) {
        ModelView view = new ModelView("upload-result.jsp");
        
        view.ajouterObjet("fichiers", fichiers);
        view.ajouterObjet("description", description);
        view.ajouterObjet("nombreFichiers", fichiers.size());
        
        int tailleTotal = 0;
        for (byte[] contenu : fichiers.values()) {
            tailleTotal += contenu.length;
        }
        view.ajouterObjet("tailleTotal", tailleTotal);
        
        return view;
    }
}