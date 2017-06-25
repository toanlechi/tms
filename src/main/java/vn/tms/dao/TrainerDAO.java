package vn.tms.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import vn.tms.entity.Trainer;

public interface TrainerDAO extends CrudRepository<Trainer, Integer>{
	
	List<Trainer> findByRole(int role);
}
