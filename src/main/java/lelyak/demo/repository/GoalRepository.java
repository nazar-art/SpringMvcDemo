package lelyak.demo.repository;

import lelyak.demo.model.Goal;
import lelyak.demo.model.GoalReport;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("goalRepository")
public interface GoalRepository extends JpaRepository<Goal, Long> {

	@Query("Select new lelyak.demo.model.GoalReport(g.minutes, e.minutes, e.activity) " +
				"from Goal g, Exercise e where g.id = e.goal.id")
	List<GoalReport> findAllGoalReports();
	
}
