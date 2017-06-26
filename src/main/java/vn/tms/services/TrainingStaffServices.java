package vn.tms.services;

import java.util.List;

import vn.tms.entity.TrainingStaff;

public interface TrainingStaffServices {
	List<TrainingStaff> findAll(int role);

	TrainingStaff findByEmail(String email);

	TrainingStaff findOne(Integer id);

	void create(TrainingStaff trainingStaff);

	void update(TrainingStaff trainingStaff);
	
	void update(TrainingStaff trainingStaff, String status);

	void delete(TrainingStaff trainingStaff);
}
