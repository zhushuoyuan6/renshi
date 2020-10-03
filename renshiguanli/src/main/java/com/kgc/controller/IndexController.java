package com.kgc.controller;

import com.kgc.pojo.Person;
import com.kgc.service.PersonService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class IndexController {

    @Resource
    PersonService personService;
    @RequestMapping("/")
    public String index(Model   model){
        List<Person> list=personService.selectAll();
        model.addAttribute("pageInfo",list);
        return "index";
    }
    @RequestMapping("/tianjia")
    public String tianjia(){
        return "insert";
    }
    @RequestMapping("/dotinajia")
    public String dotinajia(Person person){
        personService.inser(person);
        return "redirect:/";
    }

    @RequestMapping("/del")
    public String del(int id){
        personService.del(id);
        return "redirect:/";
    }
}
