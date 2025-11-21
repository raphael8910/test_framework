package com.app_test;

import com.projet_framework.annotation.method.Get;
import com.projet_framework.annotation.parameter.RequestParam;
import com.projet_framework.annotation.type.Controller;
import com.projet_framework.utility.ModelView;

@Controller(url="/etudiants")
public class EtudiantController {
    
    @Get(url = "/")
    public String getAll(){
        return "Voici tous les etudiants";
    }

    @Get(url = "/new")
    public ModelView newEtudiant(){
        ModelView view = new ModelView("form.jsp");
        // view.ajouterObjet("nom", "Rakoto");
        // view.ajouterObjet("age", 25);
        // view.ajouterObjet("message", "Bienvenue!");
        return view ;
    }

    @Get(url = "/details")
    public ModelView details(@RequestParam(paramName="nom") String nomEtudiant, String prenom, int age) {
        ModelView view = new ModelView("details.jsp");
        view.ajouterObjet("nom", nomEtudiant);
        view.ajouterObjet("prenom", prenom);
        view.ajouterObjet("age", age);
        return view;
    }
}
