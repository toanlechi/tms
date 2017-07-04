package vn.tms.services.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import vn.tms.dao.TrainerDAO;
import vn.tms.entity.Trainer;
import vn.tms.services.TrainerServices;
import vn.tms.utils.Constant;
import vn.tms.utils.Utils;

@Service
public class TrainerServicesImpl implements TrainerServices {
	@Autowired
	TrainerDAO trainerDAO;

	@Autowired
	private PasswordEncoder passwordEncoder;

	@Override
	public List<Trainer> findAll() {
		return trainerDAO.findByRole(Constant.ROLE.TRAINER);
	}

	@Override
	public void create(Trainer trainer) {
		trainer.setUpdatedAt(new Date());
		trainer.setCreatedAt(new Date());
		trainer.setStatus(true);
		trainer.setPassword(passwordEncoder.encode(trainer.getPassword()));
		trainer.setRole(Constant.ROLE.TRAINER);

		trainerDAO.save(trainer);
	}

	@Override
	public void update(Trainer trainer) {
		trainer.setUpdatedAt(new Date());
		trainerDAO.save(trainer);
	}

	@Override
	public void update(Trainer trainer, String status) {
		trainer.setUpdatedAt(new Date());

		switch (status) {
		case "active":
			trainer.setStatus(true);
			System.out.println("Active");
			break;
		case "block":
			trainer.setStatus(false);
			System.out.println("Block");
			break;
		}

		trainerDAO.save(trainer);
	}

	@Override
	public void delete(Trainer trainer) {
		trainerDAO.delete(trainer);
	}

	@Override
	public Trainer findByEmail(String email) {
		return trainerDAO.findByEmail(email);
	}

	@Override
	public Trainer findOne(Integer id) {
		return trainerDAO.findOne(id);
	}

	@Override
	public List<Trainer> search(String text, String dateStart, String dateEnd, String searchBy) {
		if ((text == null || text.equals("")) && !dateEnd.isEmpty()) {
			return trainerDAO.findByCreatedAtBetweenAndRole(Utils.getDate(dateStart), Utils.getDate(dateEnd),
					Constant.ROLE.TRAINER);
		}

		System.out.println("-----------------");

		if (searchBy.equals("name")) {
			System.out.println("name");
			if (dateStart.equals("")) {
				System.out.println("name");
				return trainerDAO.findByNameAndRole(Constant.ROLE.TRAINER, text);
			} else {
				System.out.println("name date");
				return trainerDAO.findByNameContainingAndCreatedAtBetweenAndRole(text, Utils.getDate(dateStart),
						Utils.getDate(dateEnd), Constant.ROLE.TRAINER);
			}
		} else if (searchBy.equals("email")) {
			System.out.println("email");
			if (dateStart.equals("")) {
				System.out.println("email");
				return trainerDAO.findByEmailContainingAndRole(text, Constant.ROLE.TRAINER);
			} else {
				System.out.println("email date");
				return trainerDAO.findByEmailContainingAndCreatedAtBetweenAndRole(text, Utils.getDate(dateStart),
						Utils.getDate(dateEnd), Constant.ROLE.TRAINER);
			}
		}
		return null;
	}

}
