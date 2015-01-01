package lelyak.demo.service;

import lelyak.demo.model.Goal;
import lelyak.demo.model.GoalReport;

import java.util.List;

public interface GoalService {

	Goal save(Goal goal);

	List<Goal> findAllGoals();

	List<GoalReport> findAllGoalReports();
	
}
