package lelyak.demo.controller;

import lelyak.demo.model.Goal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.validation.Valid;

@Controller
@SessionAttributes("goal")
public class GoalController {

    @RequestMapping(value = "addGoal", method = RequestMethod.GET)
    public String addGoal(Model model) {
        Goal goal = new Goal();
        goal.setMinutes(10);
        model.addAttribute("goal", goal);
        return "addGoal";
    }

    @RequestMapping(value = "addGoal", method = RequestMethod.POST)
    public String updateGoal(@Valid @ModelAttribute(value = "goal") Goal goal, BindingResult result) {
        System.out.printf("Result has errors: %s%n", result.hasErrors());
        System.out.printf("Minutes updated: %d%n", goal.getMinutes());
        if (result.hasErrors()) {
            return "addGoal";
        }
        return "redirect:/addMinutes.html";
    }
}
