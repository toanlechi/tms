package vn.tms.dao;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import vn.tms.entity.Courses;
import vn.tms.entity.Topic;

public interface TopicDAO extends CrudRepository<Topic, Integer> {

	List<Topic> findAll();

	List<Topic> findByCourses(Courses courses);

	List<Topic> findByNameContaining(String name);

	List<Topic> findByTrainingStaff_nameStartingWith(String name);

	List<Topic> findByCreatedAtBetween(Date dateStart, Date dateEnd);

	List<Topic> findByCourses_idAndCreatedAtBetween(int coursesId, Date dateStart, Date dateEnd);

	List<Topic> findByCourses_id(int id);

	List<Topic> findByCourses_idAndTrainingStaff_nameStartingWith(int coursesId, String name);

	List<Topic> findByCourses_idAndNameContaining(int cousesId, String name);

	@Query("select t from Topic t where t.courses.id=:coursesId and t.createdAt>:dateStart and t.createdAt<:dateEnd and t.name like %:name%")
	List<Topic> findByCoursesNameDate(@Param("coursesId") int coursesId, @Param("dateStart") Date dateStart,
			@Param("dateEnd") Date dateEnd, @Param("name") String name);

	@Query("select t from Topic t where t.createdAt>:dateStart and t.createdAt<:dateEnd and t.name like %:name%")
	List<Topic> findByNameDate(@Param("dateStart") Date dateStart, @Param("dateEnd") Date dateEnd,
			@Param("name") String name);
	
	int countByTrainingStaff_id(int id);
	
	List<Topic> findByTrainer_id(int trainerId);

}
