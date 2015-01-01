package lelyak.demo.repository;

import lelyak.demo.model.Exercise;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository("exerciseRepository")
public interface ExerciseRepository extends JpaRepository<Exercise, Long> {
	
}
