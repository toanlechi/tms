package vn.tms.services.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import vn.tms.dao.TrainingStaffDAO;
import vn.tms.entity.TrainingStaff;
import vn.tms.services.TrainingStaffServices;
import vn.tms.utils.Constant;

@Service
public class TrainingStaffServicesImpl implements TrainingStaffServices{

	@Autowired
	TrainingStaffDAO trainingStaffDAO;

	@Autowired
	private PasswordEncoder passwordEncoder;

	@Override
	public List<TrainingStaff> findAll() {
		return trainingStaffDAO.findByRole(Constant.ROLE.TRAININGSTAFF);
	}

	@Override
	public TrainingStaff findByEmail(String email) {
		return trainingStaffDAO.findByEmail(email);
	}

	@Override
	public TrainingStaff findOne(Integer id) {
		return trainingStaffDAO.findOne(id);
	}

	@Override
	public void create(TrainingStaff trainingStaff) {
		trainingStaff.setUpdatedAt(new Date());
		trainingStaff.setCreatedAt(new Date());
		trainingStaff.setStatus(true);
		trainingStaff.setRole(Constant.ROLE.TRAININGSTAFF);
		trainingStaff.setPassword(passwordEncoder.encode(trainingStaff.getPassword()));

		trainingStaffDAO.save(trainingStaff);
	}

	@Override
	public void update(TrainingStaff trainingStaff) {

	}

	@Override
	public void delete(TrainingStaff trainingStaff) {
		trainingStaffDAO.delete(trainingStaff);
	}

	@Override
	public void update(TrainingStaff trainingStaff, String status) {
		trainingStaff.setUpdatedAt(new Date());

		switch (status) {
		case "active":
			trainingStaff.setStatus(true);
			break;
		case "block":
			trainingStaff.setStatus(false);
			break;
		}
		
		trainingStaffDAO.save(trainingStaff);
	}

	@Override
	public void save(TrainingStaff trainingStaff) {
		trainingStaffDAO.save(trainingStaff);
		
	}

}
