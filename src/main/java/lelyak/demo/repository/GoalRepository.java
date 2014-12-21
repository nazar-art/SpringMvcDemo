package lelyak.demo.repository;

import lelyak.demo.model.Goal;
import lelyak.demo.model.GoalReport;

import java.util.List;

public interface GoalRepository {

	Goal save(Goal goal);

	List<Goal> loadAll();

	List<GoalReport> findAllGoalReports();
	
}
