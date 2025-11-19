package com.app_test;

import com.projet_framework.annotation.method.Get;
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
        return view ;
    }
}
