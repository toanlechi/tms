package vn.tms.dao;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import vn.tms.entity.Category;

public interface CategoryDAO extends CrudRepository<Category, Integer> {

	List<Category> findAll();

	Category findOne(int id);

	List<Category> findByName(String name);

	List<Category> findByNameContaining(String name);
	
	List<Category> findByTrainingStaff_nameStartingWith(String name);
	
	List<Category> findByCreatedAtBetween(Date dateStart, Date dateEnd);
	
	@Query("select c from Category c where c.createdAt>:dateStart and c.createdAt>:dateEnd and c.name like %:name%")
	List<Category> findByNameAndDate(@Param("name") String name, @Param("dateStart") Date dateStart,  @Param("dateEnd") Date dateEnd);

	int countByTrainingStaff_id(int id);

}
