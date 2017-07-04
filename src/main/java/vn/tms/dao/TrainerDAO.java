package vn.tms.dao;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import vn.tms.entity.Trainer;

public interface TrainerDAO extends CrudRepository<Trainer, Integer> {
	List<Trainer> findByRole(int role);

	Trainer findByEmail(String email);

	List<Trainer> findByEmailContainingAndRole(String email, int role);

	@Query("select t from Trainer t where t.role=:role and t.name like %:name%")
	List<Trainer> findByNameAndRole(@Param("role") int role, @Param("name") String name);

	List<Trainer> findByCreatedAtBetweenAndRole(Date dateStart, Date dateEnd, int role);

	List<Trainer> findByNameContainingAndCreatedAtBetweenAndRole(String name, Date dateStart, Date dateEnd, int role);

	List<Trainer> findByEmailContainingAndCreatedAtBetweenAndRole(String email, Date dateStart, Date dateEnd, int role);
}
