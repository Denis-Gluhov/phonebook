package phonebook.server.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import phonebook.server.entity.Phonebook;
import phonebook.server.service.PhonebookService;

@Controller
public class MainController {

    @Autowired
    private PhonebookService phonebookService;

    Phonebook phonebook;

    //возвращает список контактов
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String getAllContact(ModelMap map){
        map.addAttribute("contacts", phonebookService.getAll());
        return "index";
    }

    //поиск контакта по id
    @RequestMapping(value = "/index/{id}", method = RequestMethod.GET)
    public String getPhonebook(@PathVariable("id") long id, Model model) {
        model.addAttribute("contacts", phonebookService.getById(id));
        return "index";
    }

}
