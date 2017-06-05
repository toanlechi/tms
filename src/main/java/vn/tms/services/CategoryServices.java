package vn.tms.services;

import java.util.List;

import vn.tms.entity.Category;
import vn.tms.entity.Courses;

public interface CategoryServices {
	List<Category> getListByUser(int idUser);

	List<Category> getListAll();

	List<Category> getListByName(String nameCategory);

	boolean insert(Category category);

	boolean update(Category category);

	boolean addCourses(List<Courses> list);

	boolean addCourses(Courses courses);

	boolean deleteCourses(int idCourses);

	boolean deleteCourses(List<Courses> list);

	boolean isExists(String name);
}
