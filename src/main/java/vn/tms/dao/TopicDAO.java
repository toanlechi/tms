package vn.tms.dao;

import java.util.Date;
import java.util.List;

import org.springframework.data.repository.CrudRepository;

import vn.tms.entity.Courses;
import vn.tms.entity.Topic;

public interface TopicDAO extends CrudRepository<Topic, Integer> {
	List<Topic> findAll();
	
	List<Topic> findByCourses(Courses courses);
	
	List<Topic> findByNameContaining(String name);
	
	List<Topic> findByTrainingStaff_nameStartingWith(String name);
	
	List<Topic> findByCreatedAtBetween(Date dateStart, Date dateEnd);
	
	List<Topic> findByCourses_idAndCreatedAtBetween(int coursesId, Date dateStart, Date dateEnd);

}
