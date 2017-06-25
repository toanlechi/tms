package vn.tms.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vn.tms.dao.TrainerDAO;
import vn.tms.entity.Trainer;
import vn.tms.services.TrainerServices;
import vn.tms.utils.Constant;

@Service
public class TrainerServicesImpl implements TrainerServices{
	@Autowired
	private TrainerDAO trainerDAO;

	@Override
	public List<Trainer> findAll() {
		return trainerDAO.findByRole(Constant.ROLE.TRAINER);
	}



}
