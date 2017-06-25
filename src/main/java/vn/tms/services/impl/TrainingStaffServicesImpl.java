package vn.tms.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vn.tms.dao.TrainingStaffDAO;
import vn.tms.entity.TrainingStaff;
import vn.tms.services.TrainingStaffServices;

@Service
public class TrainingStaffServicesImpl implements TrainingStaffServices{

	@Autowired
	private TrainingStaffDAO trainingStaffDAO;
	
	@Override
	public TrainingStaff findByEmail(String email) {
		return trainingStaffDAO.findByEmail(email);
	}

	@Override
	public void save(TrainingStaff trainingStaff) {
		trainingStaffDAO.save(trainingStaff);
		
	}

	@Override
	public List<TrainingStaff> findAll() {
		
		return trainingStaffDAO.findAll();
	}

}
