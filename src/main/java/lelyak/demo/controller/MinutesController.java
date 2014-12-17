package lelyak.demo.controller;

import lelyak.demo.model.Exercise;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MinutesController {

    @RequestMapping(value = "/addMinutes")
    public String addMinutes(@ModelAttribute(value = "exercise") Exercise exercise) {
        System.out.printf("Exercise: %d%n", exercise.getMinutes());
//        return "forward:addMoreMinutes.html";
//        return "redirect:addMoreMinutes.html";
        return "addMinutes";
    }

    /*@RequestMapping(value = "/addMoreMinutes")
    public String addMoreMinutes(@ModelAttribute(value = "exercise") Exercise exercise) {
        System.out.printf("Exercising: %d%n", exercise.getMinutes());
        return "addMinutes";
    }*/
}
