package com.wanfangdata.javatemplete.web;

import com.wanfangdata.demo.SayHello;
import com.wanfangdata.javatemplete.util.RandomNum;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 首页controller
 * Created on 2017/3/6.
 *
 * @author meibr
 */
@Controller
public class IndexController {

    @Autowired
    RandomNum randomNum;

    @Autowired
    SayHello sayHello;

    @RequestMapping("/")
    public String index() {
        return "index";
    }

    @RequestMapping("/beetl")
    public String beetl(Model model){
        return "/views/beetlpage";
    }
    @RequestMapping("/dubbo")
    public String dubbo(Model model){
        String helloWorld = sayHello.helloWorld();
        model.addAttribute("hello",helloWorld);
        return "/views/dubbo";
    }

    @RequestMapping("/cache")
    public String cache(Model model){
        model.addAttribute("num", randomNum.getRandomInt());
        return "/views/cache";
    }
}
