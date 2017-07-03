package vn.tms.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import vn.tms.entity.Courses;
import vn.tms.entity.ReviewCourses;
import vn.tms.entity.Trainee;
import vn.tms.services.CoursesServices;
import vn.tms.services.ReviewCoursesServices;
import vn.tms.services.TopicServices;
import vn.tms.services.TraineeServices;

@Controller
public class TraineeController {
	@Autowired
	CoursesServices coursesServices;

	@Autowired
	TopicServices topicServices;

	@Autowired
	TraineeServices traineeServices;

	@Autowired
	ReviewCoursesServices reviewCoursesServices;

	@GetMapping(value = "/trainee/courses")
	public String index(Model model, Principal principal) {

		Trainee trainee = traineeServices.findByEmail(principal.getName());
		model.addAttribute("listCourses", coursesServices.findByTraineeId(trainee.getId()));
		return "traineeCourses";
	}

	@SuppressWarnings("unused")
	@GetMapping(value = "/trainee/courses/{id}/show")
	public String show(@PathVariable int id, Model model, Principal principal) {

		Trainee trainee = traineeServices.findByEmail(principal.getName());
		Courses courses = coursesServices.findOne(id);
		ReviewCourses reviewCourses = reviewCoursesServices.findReviewByCoursesAndTrainee(courses.getId(),
				trainee.getId());

		if (courses == null) {
			return "404";
		} else {
			model.addAttribute("courses", courses);
			model.addAttribute("listTopic", topicServices.findByCourses(courses));
			if (reviewCourses != null) {
				model.addAttribute("reviewCourses", reviewCourses);
			}
			return "traineeCoursesDetails";
		}
	}

}
