package vn.tms.services;

import java.util.List;

import vn.tms.entity.Courses;
import vn.tms.entity.Topic;

public interface TopicServices {
	List<Topic> findAll();

	List<Topic> findByCourses(Courses courses);
	
	Topic findOne(int id);
	
	void save(Topic topic);
	
	void delete(int id);

}
