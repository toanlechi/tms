package vn.tms.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import vn.tms.entity.TrainingStaff;

public interface TrainingStaffDAO extends CrudRepository<TrainingStaff, Integer> {

	List<TrainingStaff> findByRole(int role);

	TrainingStaff findByEmail(String email);
}
