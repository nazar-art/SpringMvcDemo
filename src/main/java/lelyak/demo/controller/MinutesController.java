package lelyak.demo.controller;

import lelyak.demo.model.Activity;
import lelyak.demo.model.Exercise;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Controller
public class MinutesController {

    @RequestMapping(value = "/addMinutes")
    public String addMinutes(@ModelAttribute(value = "exercise") Exercise exercise) {
        System.out.printf("Exercise: %d%n", exercise.getMinutes());
//        return "forward:addMoreMinutes.html";
//        return "redirect:addMoreMinutes.html";
        return "addMinutes";
    }

    @RequestMapping(value = "/activities", method = RequestMethod.GET)
    public @ResponseBody List<Activity> findAllActivities() {
        List<Activity> activities = new ArrayList<>();
        Activity run = new Activity();
        run.setDesc("Run");
        activities.add(run);

        Activity bike = new Activity();
        bike.setDesc("Bike");
        activities.add(bike);

        Activity swim = new Activity();
        swim.setDesc("Swim");
        activities.add(swim);

        return activities;
    }

    /*@RequestMapping(value = "/addMoreMinutes")
    public String addMoreMinutes(@ModelAttribute(value = "exercise") Exercise exercise) {
        System.out.printf("Exercising: %d%n", exercise.getMinutes());
        return "addMinutes";
    }*/
}
