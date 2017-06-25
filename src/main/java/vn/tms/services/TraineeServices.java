package vn.tms.services;

import java.util.List;

import vn.tms.entity.Trainee;

public interface TraineeServices {
	
	void save(Trainee trainee);
	
	List<Trainee> findByCoursesId(int coursesId);
	
	List<Trainee> findAll();

}
