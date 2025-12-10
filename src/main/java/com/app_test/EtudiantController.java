package com.app_test;

import java.util.Map;

import com.projet_framework.annotation.method.GetUrl;
import com.projet_framework.annotation.method.PostUrl;
import com.projet_framework.annotation.parameter.EntityBody;
import com.projet_framework.annotation.parameter.PathVariable;
import com.projet_framework.annotation.parameter.RequestParam;
import com.projet_framework.annotation.type.Controller;
import com.projet_framework.utility.ModelView;

@Controller(url = "/etudiants")
public class EtudiantController {

    @GetUrl(url = "/")
    public String getAll() {
        return "Voici tous les etudiants";
    }

    @GetUrl(url = "/{id}")
    public ModelView getById(@PathVariable(name = "id") int id) {
        ModelView modelView = new ModelView("detail-etudiant.jsp");
        modelView.ajouterObjet("id", id);
        modelView.ajouterObjet("message", "Voici les details concernant l'etudiant id: " + id);

        return modelView;
    }

    @GetUrl(url = "/new")
    public ModelView newEtudiant() {
        ModelView view = new ModelView("form.jsp");
        return view;
    }

    @GetUrl(url = "/save_etudiant")
    public ModelView saveEtudiant(@EntityBody Etudiant etudiant) {
        ModelView view = new ModelView("etudiant-result.jsp");
        view.ajouterObjet("etudiant", etudiant);
        return view;
    }

    @GetUrl(url = "/detailsMap")
    public ModelView detailsMap(Map<String, Object> detailsMap) {
        ModelView view = new ModelView("details.jsp");
        for (String key : detailsMap.keySet()) {
            view.ajouterObjet(key, detailsMap.get(key));
        }
        return view;
    }

    @GetUrl(url = "/details")
    public ModelView details(@RequestParam(paramName = "nom") String nomEtudiant, String prenom, int age) {
        ModelView view = new ModelView("details.jsp");
        view.ajouterObjet("nom", nomEtudiant);
        view.ajouterObjet("prenom", prenom);
        view.ajouterObjet("age", age);
        return view;
    }

    @PostUrl(url = "/details")
    public ModelView detailsPost(@RequestParam(paramName = "nom") String nomEtudiant, String prenom, int age) {
        ModelView view = new ModelView("details.jsp");
        view.ajouterObjet("nom", nomEtudiant);
        view.ajouterObjet("prenom", prenom);
        view.ajouterObjet("age", age);
        return view;
    }

}
