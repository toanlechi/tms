package vn.tms.services;

import java.util.List;

import vn.tms.entity.Category;
import vn.tms.entity.Courses;

public interface CoursesServices {
	List<Courses> findAll();

	List<Courses> findByCategory(Category category);

	List<Courses> findByCategoryId(int id);

	Courses findOne(int id);

	void save(Courses courses);

	void delete(int id);

	List<Courses> findByName(String name);

	List<Courses> search(String text, String searchBy, String dateFrom, String dateTo, int categoryId);

	List<Courses> findByTraineeId(int id);

	int countByTrainingStaff(int id);

	boolean test(String a);

}
