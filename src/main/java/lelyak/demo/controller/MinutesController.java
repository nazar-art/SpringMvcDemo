package lelyak.demo.controller;

import lelyak.demo.model.Activity;
import lelyak.demo.model.Exercise;
import lelyak.demo.service.IExerciseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.validation.Valid;
import java.util.List;

@Controller
public class MinutesController {

    @Autowired
    private IExerciseService exerciseService;

    @RequestMapping(value = "/addMinutes")
    public String addMinutes(@Valid @ModelAttribute(value = "exercise") Exercise exercise, BindingResult result) {
        System.out.printf("Result has errors: %s%n", result.hasErrors());
        System.out.printf("Exercise: %d%n", exercise.getMinutes());
        System.out.printf("Exercise activity: %s%n", exercise.getActivity());
//        return "forward:addMoreMinutes.html";
//        return "redirect:addMoreMinutes.html";
        return "addMinutes";
    }

    @RequestMapping(value = "/activities", method = RequestMethod.GET)
    public @ResponseBody List<Activity> findAllActivities() {
        return exerciseService.findAllActivities();
    }

    /*@RequestMapping(value = "/addMoreMinutes")
    public String addMoreMinutes(@ModelAttribute(value = "exercise") Exercise exercise) {
        System.out.printf("Exercising: %d%n", exercise.getMinutes());
        return "addMinutes";
    }*/
}
