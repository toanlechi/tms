package vn.tms.dao;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import vn.tms.entity.Category;
import vn.tms.entity.Courses;

public interface CoursesDAO extends CrudRepository<Courses, Integer> {

	List<Courses> findAll();

	List<Courses> findByCategory(Category category);

	List<Courses> findByName(String name);

	List<Courses> findByNameContaining(String name);

	List<Courses> findByTrainingStaff_nameStartingWith(String name);

	List<Courses> findByCreatedAtBetween(Date dateStart, Date dateEnd);
	
	List<Courses> findByCategory_idAndCreatedAtBetween(int categoryId, Date dateStart, Date dateEnd);

	List<Courses> findByCategory_id(int id);

	List<Courses> findByCategory_idAndTrainingStaff_nameStartingWith(int categoryId, String name);

	List<Courses> findByCategory_idAndNameContaining(int categoryId, String name);

	@Query("select c from Courses c where c.category.id=:categoryId and c.createdAt>:dateStart and c.createdAt<:dateEnd and c.name like %:name%")
	List<Courses> findByCategoryNameDate(@Param("categoryId") int categoryId, @Param("dateStart") Date dateStart,
			@Param("dateEnd") Date dateEnd, @Param("name") String name);

	@Query("select c from Courses c where c.createdAt>:dateStart and c.createdAt<:dateEnd and c.name like %:name%")
	List<Courses> findByNameDate(@Param("dateStart") Date dateStart, @Param("dateEnd") Date dateEnd,
			@Param("name") String name);

}
