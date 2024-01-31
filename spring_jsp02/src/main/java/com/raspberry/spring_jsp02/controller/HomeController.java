package com.raspberry.spring_jsp02.controller;

import com.raspberry.spring_jsp02.dto.MemberDto;
import lombok.extern.java.Log;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@Log
public class HomeController {
    @GetMapping("/")
    public String home(Model model){
        log.info("home()");
        model.addAttribute("data", "서버에서 보낸 문자열");
        model.addAttribute("number", 100);
        return "index";
    }

    @GetMapping("inputForm")
    public String inputForm(){
        log.info("inputForm()");
        return "inputForm";
    }

    @GetMapping("inData")
    public String inData(@RequestParam("str") String str,
                         @RequestParam("num") String num){
        log.info("inData() str : " + str
                + ", " + "num : " + num);
        return "index";//첫페이지로 이동
    }

    @GetMapping("joinForm")
    public String joinForm(){
        log.info("joinForm()");
        return "joinForm";
    }

    @PostMapping("joinData")
    public String joinData(MemberDto member){
        log.info("joinData() id : " + member.getId()
                + ", age : " + member.getAge());
        return "index";
    }

    @GetMapping("output")
    public String output(Model model){
        log.info("output()");
        String m = "메시지입니다~";
        model.addAttribute("msg", m);

        //Dto를 활용한 데이터 묶음 전달
        MemberDto member = new MemberDto();
        member.setId("test");
        member.setName("테스터");
        member.setAge(30);

        model.addAttribute("mem", member);

        return "output";
    }

    @GetMapping("output2")
    public ModelAndView output2(){
        ModelAndView mv = new ModelAndView();
        String m2 = "ModelAndView로 보내는 메시지";
        mv.addObject("msg", m2);

        MemberDto member2 = new MemberDto();
        member2.setId("test2");
        member2.setName("테스터2");
        member2.setAge(28);
        mv.addObject("mem", member2);//데이터 삽입

        mv.setViewName("output");//jsp 페이지 지정
        
        return mv;
    }
}//class end
