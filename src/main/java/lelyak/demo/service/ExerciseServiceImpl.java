package lelyak.demo.service;

import lelyak.demo.model.Activity;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service("exerciseService")
public class ExerciseServiceImpl implements IExerciseService {

    @Override
    public List<Activity> findAllActivities() {
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

}
