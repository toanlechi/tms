package vn.tms.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import vn.tms.entity.Courses;
import vn.tms.entity.Topic;

public interface TopicDAO extends CrudRepository<Topic, Integer> {
	List<Topic> findAll();
	
	List<Topic> findByCourses(Courses courses);

}
