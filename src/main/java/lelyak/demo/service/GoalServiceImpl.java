package lelyak.demo.service;

import lelyak.demo.model.Goal;
import lelyak.demo.model.GoalReport;
import lelyak.demo.repository.GoalRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("goalService")
public class GoalServiceImpl implements GoalService {

	@Autowired
	private GoalRepository goalRepository;
	
	@Transactional
	public Goal save(Goal goal) {
		return goalRepository.save(goal);
	}

	public List<Goal> findAllGoals() {
		return goalRepository.loadAll();
	}

	public List<GoalReport> findAllGoalReports() {
		return goalRepository.findAllGoalReports();
	}

}
