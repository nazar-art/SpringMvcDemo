package lelyak.demo.repository;

import lelyak.demo.model.Exercise;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Repository("exerciseRepository")
public class ExerciseRepositoryImpl implements ExerciseRepository {

	@PersistenceContext
	private EntityManager em;
	
	public Exercise save(Exercise exercise) {
		
		em.persist(exercise);
		
		em.flush();
		
		return exercise;
	}

}
