package vn.tms.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import vn.tms.entity.ReviewCourses;

public interface ReviewCoursesDAO extends CrudRepository<ReviewCourses, Integer> {
	ReviewCourses findByCourses_idAndTrainee_id(int courses, int trainee);
	
	List<ReviewCourses> findByCourses_id(int courses);
}
