package vn.tms.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vn.tms.dao.TraineeDAO;
import vn.tms.entity.Trainee;
import vn.tms.services.TraineeServices;

@Service
public class TraineeServicesImpl implements TraineeServices{
	
	@Autowired
	private TraineeDAO traineeDAO;

	@Override
	public void save(Trainee trainee) {
		traineeDAO.save(trainee);
		
	}

	@Override
	public List<Trainee> findByCoursesId(int coursesId) {
		return traineeDAO.findByListCourses_id(coursesId);
	}

	@Override
	public List<Trainee> findAll() {
		return traineeDAO.findAll();
	}

}
