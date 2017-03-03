package com.eliindia;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.eliindia.model.Template;

@Controller
@RequestMapping(value="/templates")
public class TemplateController {

  @RequestMapping(value="/saveTemplate",method = RequestMethod.GET)
  public String saveTemplate(Model model){
    Template template=new Template();
    model.addAttribute("template",template);
    return "template";
  }
  
  
  @RequestMapping(value="/hi",method = RequestMethod.GET)
  public String welcome(Model model){
    Template template=new Template();
    model.addAttribute("template",template);
    return "hi";
  }
  
}
