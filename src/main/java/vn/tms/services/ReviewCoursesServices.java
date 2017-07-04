package vn.tms.services;

import java.util.List;

import vn.tms.entity.ReviewCourses;

public interface ReviewCoursesServices {
	
	void update(ReviewCourses reviewCourses);
	
	void create(ReviewCourses reviewCourses);
	
	ReviewCourses findReviewByCoursesAndTrainee(int courses, int trainee);
	
	List<ReviewCourses> findByCoursesId(int courses);
}
