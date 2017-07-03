package vn.tms.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import vn.tms.entity.Category;
import vn.tms.entity.Courses;

public interface CoursesDAO extends CrudRepository<Courses, Integer> {

	List<Courses> findAll();

	List<Courses> findByCategory(Category category);

	List<Courses> findByName(String name);

	List<Courses> findByListTrainee_id(int id);

}
