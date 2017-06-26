package vn.tms.services;

import java.util.List;

import vn.tms.entity.Category;
import vn.tms.entity.Courses;

public interface CoursesServices {
	List<Courses> findAll();
	
	List<Courses> findByCategory(Category category);
	
	Courses findOne(int id);
	
	void save(Courses courses);
	
	void delete(int id);
	
	List<Courses> findByName(String name);

}
