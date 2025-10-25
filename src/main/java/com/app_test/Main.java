package com.app_test;

import java.util.Set;

import org.reflections.Reflections;

import com.projet_framework.annotation.Controller;

public class Main {
    public static void main(String[] args) {
        Reflections reflections = new Reflections("com.app_test");

        Set<Class<?>> controllers = reflections.getTypesAnnotatedWith(Controller.class);

        if(controllers.isEmpty()){
            System.out.println("No controllers found");
        } else {
            for( Class<?> class1: controllers){
                System.out.println("Controller found : "+ class1.getName());
            }
        }
    }
}