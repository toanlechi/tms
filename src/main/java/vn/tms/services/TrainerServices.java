package vn.tms.services;

import java.util.List;

import vn.tms.entity.Trainer;

public interface TrainerServices {
	List<Trainer> findAll();

	Trainer findByEmail(String email);

	Trainer findOne(Integer id);

	void create(Trainer trainer);

	void update(Trainer trainer);

	void update(Trainer trainer, String status);

	void delete(Trainer trainer);
	
	
}
