package vn.tms.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vn.tms.dao.TopicDAO;
import vn.tms.entity.Courses;
import vn.tms.entity.Topic;
import vn.tms.services.TopicServices;

@Service
public class TopicServicesImpl implements TopicServices {

	@Autowired
	private TopicDAO topicDAO;

	@Override
	public List<Topic> findAll() {
		return topicDAO.findAll();
	}

	@Override
	public List<Topic> findByCourses(Courses courses) {
		return topicDAO.findByCourses(courses);
	}

	@Override
	public Topic findOne(int id) {
		return topicDAO.findOne(id);
	}

	@Override
	public void save(Topic topic) {
		topicDAO.save(topic);

	}

	@Override
	public void delete(int id) {
		topicDAO.delete(id);
	}

}
