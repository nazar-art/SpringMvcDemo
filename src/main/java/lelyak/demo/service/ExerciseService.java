package lelyak.demo.service;

import lelyak.demo.model.Activity;
import lelyak.demo.model.Exercise;

import java.util.List;

public interface ExerciseService {

	List<Activity> findAllActivities();

	Exercise save(Exercise exercise);

}