package vn.tms.dao;

import org.springframework.data.repository.CrudRepository;

import vn.tms.entity.ReviewCourses;

public interface ReviewCoursesDAO extends CrudRepository<ReviewCourses, Integer> {
	ReviewCourses findByCourses_idAndTrainee_id(int courses, int trainee);
}
