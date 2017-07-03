package vn.tms.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vn.tms.dao.ReviewCoursesDAO;
import vn.tms.entity.ReviewCourses;
import vn.tms.services.ReviewCoursesServices;

@Service
public class ReviewCoursesServicesImpl implements ReviewCoursesServices{
	@Autowired
	ReviewCoursesDAO reviewCoursesDAO;

	@Override
	public void update(ReviewCourses reviewCourses) {
		reviewCoursesDAO.save(reviewCourses);
	}

	@Override
	public ReviewCourses findReviewByCoursesAndTrainee(int courses, int trainee) {
		return reviewCoursesDAO.findByCourses_idAndTrainee_id(courses, trainee);
	}

	@Override
	public void create(ReviewCourses reviewCourses) {
		reviewCoursesDAO.save(reviewCourses);
	}

}
