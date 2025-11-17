package com.app_test;

import com.projet_framework.annotation.method.Get;
import com.projet_framework.annotation.type.Controller;

@Controller(url="/etudiants")
public class EtudiantController {
    
    @Get(url = "/")
    public String getAll(){
        return "Voici tous les etudiants";
    }
}
