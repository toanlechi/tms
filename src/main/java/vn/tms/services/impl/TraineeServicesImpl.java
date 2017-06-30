package vn.tms.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vn.tms.dao.TraineeDAO;
import vn.tms.entity.Trainee;
import vn.tms.services.TraineeServices;
import vn.tms.utils.Constant;

@Service
public class TraineeServicesImpl implements TraineeServices {

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

	@Override
	public Trainee findByEmail(String email) {
		return traineeDAO.findByEmail(email);
	}

	@Override
	public List<Trainee> findAllByRole() {
		return traineeDAO.findByRole(Constant.ROLE.TRAINEE);
	}

	@Override
	public Trainee findOne(int id) {
		traineeDAO.findOne(id);
		return null;
	}

}
