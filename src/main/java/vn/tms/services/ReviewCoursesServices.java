package vn.tms.services;

import vn.tms.entity.ReviewCourses;

public interface ReviewCoursesServices {
	
	void update(ReviewCourses reviewCourses);
	
	void create(ReviewCourses reviewCourses);
	
	ReviewCourses findReviewByCoursesAndTrainee(int courses, int trainee);
}
