package phonebook.server.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import phonebook.server.entity.Phonebook;
import phonebook.server.service.PhonebookService;

@Controller
public class AddController {

    @Autowired
    private PhonebookService phonebookService;

    @ModelAttribute("phonebook")
    public Phonebook newPhonebook(){
        return new Phonebook();
    }

    //добавление сонтакта
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String setContact(@ModelAttribute("phonebook") Phonebook phonebook){
        phonebookService.save(phonebook);
        return "redirect:add";
    }

}
