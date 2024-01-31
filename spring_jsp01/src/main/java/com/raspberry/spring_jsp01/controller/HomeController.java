package com.raspberry.spring_jsp01.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
    //@RequestMapping(value = "/", method = RequestMethod.GET)
    @GetMapping("/")
    public String first(){
        return "first";//jsp 페이지의 파일명.
    }

    @GetMapping("second")
    public String se(){
        return "second";
    }

    @GetMapping("test1")
    public String t1(){
        return "test1";
    }

    @GetMapping("test2")
    public String t2(){
        return "test2";
    }

    @GetMapping("input")
    public String inputForm(){
        return "inputForm1";
    }

    @GetMapping("inData")
    public String inData(String str, String num){
        System.out.println(str + ", " + num);

        return "first";//첫페이지로.
    }
}//class end
