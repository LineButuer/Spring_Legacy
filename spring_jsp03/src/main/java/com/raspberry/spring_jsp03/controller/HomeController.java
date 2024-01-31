package com.raspberry.spring_jsp03.controller;

import com.raspberry.spring_jsp03.dto.CalDataDto;
import lombok.extern.java.Log;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

@Controller
@Log
public class HomeController {
    @GetMapping("/")
    public String home(Model model){
        log.info("home()");

        Date now = new Date();
        SimpleDateFormat sdf =
                new SimpleDateFormat("yyyy년 MM월 dd일 (E)");
        String nowDate = sdf.format(now);
        log.info(nowDate);//데이터 확인용 로그
        model.addAttribute("date", nowDate);//식별자, 데이터
        return "index";
    }

    @GetMapping("calForm")
    public String calForm(){
        log.info("calForm()");
        return "calForm";
    }

    @GetMapping("calProc")
    public ModelAndView calProc(CalDataDto cd){
        log.info("calProc()");
        int res = 0;

        switch (cd.getOp()){
            case "+":
                res = cd.getNum1() + cd.getNum2();
                break;
            case "-":
                res = cd.getNum1() - cd.getNum2();
                break;
            case "*":
                res = cd.getNum1() * cd.getNum2();
                break;
            case "/":
                res = cd.getNum1() / cd.getNum2();
                break;
            case "%":
                res = cd.getNum1() % cd.getNum2();
                break;
        }
        cd.setResult(res);
        ModelAndView mv = new ModelAndView();
        mv.addObject("res", cd);
        mv.setViewName("result");

        return mv;
    }

    @GetMapping("jstl_ex")
    public String jstl_ex(Model model){
        log.info("jstl_ex()");
        ArrayList<String> list = new ArrayList<>();
        list.add("치킨");
        list.add("피자");
        list.add("햄버거");
        list.add("콜라");
        list.add("사이다");
        model.addAttribute("list", list);
        return "jstl_ex";
    }
}//class end
