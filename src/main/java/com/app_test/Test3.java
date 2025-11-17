package com.app_test;

import com.projet_framework.annotation.method.Get;
import com.projet_framework.annotation.type.Controller;

@Controller(url = "/fh")
public class Test3 {
    
    @Get(url = "/test")
    public int createInt(){
        return 23 ;
    }
}
