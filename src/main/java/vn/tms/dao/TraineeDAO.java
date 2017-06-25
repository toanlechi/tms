package vn.tms.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import vn.tms.entity.Trainee;

public interface TraineeDAO extends CrudRepository<Trainee, Integer>{

	List<Trainee> findByListCourses_id(int id);
	
	List<Trainee> findAll();
}
