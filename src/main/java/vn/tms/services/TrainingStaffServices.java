package vn.tms.services;

import java.util.List;

import vn.tms.entity.TrainingStaff;

public interface TrainingStaffServices {
	TrainingStaff findByEmail(String email);
	void save(TrainingStaff trainingStaff);
	
	List<TrainingStaff> findAll();
}
