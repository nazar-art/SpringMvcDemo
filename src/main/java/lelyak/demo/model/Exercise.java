package lelyak.demo.model;

import org.hibernate.validator.constraints.Range;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "EXERCISE")
public class Exercise {

    @Id
    @GeneratedValue
    private Long id;

    @Column(name = "MINUTES")
    @Range(min = 1, max = 120)
    private int minutes;

    @NotNull
    @Column(name = "ACTIVITY")
    private String activity;

    @ManyToOne
    private Goal goal;

    public String getActivity() {
        return activity;
    }

    public Goal getGoal() {
        return goal;
    }

    public Long getId() {
        return id;
    }

    public int getMinutes() {
        return minutes;
    }

    public void setActivity(String activity) {
        this.activity = activity;
    }

    public void setGoal(Goal goal) {
        this.goal = goal;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setMinutes(int minutes) {
        this.minutes = minutes;
    }

}
