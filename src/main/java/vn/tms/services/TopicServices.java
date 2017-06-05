package vn.tms.services;

import java.util.List;

import vn.tms.entity.Topic;

public interface TopicServices {
	List<Topic> getListByUser(int idUser);

	List<Topic> getListByCourses(int idCourses);

	List<Topic> getListByName(String nameTopic);

	boolean insert(Topic topic);

	boolean update(Topic topic);

	boolean delete(int idTopic);

	boolean isExists(String nameTopic);

}
