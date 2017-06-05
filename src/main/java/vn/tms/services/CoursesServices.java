package vn.tms.services;

import java.util.List;

import vn.tms.entity.Courses;
import vn.tms.entity.Topic;

public interface CoursesServices {
	List<Courses> getListByUser(int idUser);

	List<Courses> getListByCategory(int idCategory);

	List<Courses> getListByName(String nameCourses);

	boolean insert(Courses courses);

	boolean update(Courses courses);

	boolean addTopic(List<Topic> list);

	boolean addTopic(Topic topic);

	boolean deleteTopic(int idTopic);

	boolean deleteTopic(List<Topic> list);

	boolean isExists(String name);
}
