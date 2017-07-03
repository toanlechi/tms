package vn.tms.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vn.tms.dao.TopicDAO;
import vn.tms.entity.Courses;
import vn.tms.entity.Topic;
import vn.tms.services.TopicServices;
import vn.tms.utils.Utils;

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

	@Override
	public List<Topic> search(String text, String searchBy, String dateFrom, String dateTo, int coursesId) {
		if (searchBy.equals("name")) {
			if (coursesId == 0) {
				if (dateTo.equals("")) {
					return topicDAO.findByNameContaining(text);
				} else {
					if (text == null || text.equals("")) {
						return topicDAO.findByCreatedAtBetween(Utils.getDate(dateFrom), Utils.getDate(dateTo));
					} else {
						return topicDAO.findByNameDate(Utils.getDate(dateFrom), Utils.getDate(dateTo), text);
					}
				}
			} else {
				if (dateTo.equals("")) {
					if (text.equals("")) {
						return topicDAO.findByCourses_id(coursesId);
					} else {
						return topicDAO.findByCourses_idAndNameContaining(coursesId, text);
					}
				} else {
					if (text == null || text.equals("")) {
						return topicDAO.findByCourses_idAndCreatedAtBetween(coursesId, Utils.getDate(dateFrom),
								Utils.getDate(dateTo));
					} else {
						return topicDAO.findByCoursesNameDate(coursesId, Utils.getDate(dateFrom), Utils.getDate(dateTo),
								text);
					}
				}
			}
		}
		return null;
	}

	@Override
	public int coutByTrainingStaff(int id) {
		return topicDAO.countByTrainingStaff_id(id);
	}

	@Override
	public List<Topic> findByTrainer(int trainerId) {
		List<Topic> topics = topicDAO.findByTrainer_id(trainerId);
		for (Topic topic : topics) {
			List<String> day = Utils.getDayOfWeek(topic.getDay());
			for (String string : day) {
				if (string.equals("2")) {
					topic.setMo("checked");
				} else if (string.equals("3")) {
					topic.setTu("checked");
				} else if (string.equals("4")) {
					topic.setWe("checked");
				} else if (string.equals("5")) {
					topic.setTh("checked");
				} else if (string.equals("6")) {
					topic.setFr("checked");
				} else if (string.equals("7")) {
					topic.setSa("checked");
				} else if (string.equals("CN")) {
					topic.setSu("checked");
				}
			}
		}

		return topics;
	}

	@Override
	public int countByTrainer(int trainerId) {
		topicDAO.countByTrainer_id(trainerId);
		return 0;
	}

}
