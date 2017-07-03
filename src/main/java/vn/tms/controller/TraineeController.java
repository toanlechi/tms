package vn.tms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import vn.tms.entity.Courses;
import vn.tms.services.CoursesServices;
import vn.tms.services.TopicServices;

@Controller
public class TraineeController {
	@Autowired
	CoursesServices coursesServices;

	@Autowired
	TopicServices topicServices;

	@GetMapping(value = "/trainee/courses")
	public String index(Model model) {
		model.addAttribute("listCourses", coursesServices.findByTraineeId(1));
		return "traineeCourses";
	}

	@GetMapping(value = "/trainee/courses/${id}/show")
	public String show(@PathVariable int id, Model model) {
		Courses courses = coursesServices.findOne(id);

		if (courses == null) {
			return "404";
		} else {
			model.addAttribute("courses", courses);
			model.addAttribute("listTopic", topicServices.findByCourses(courses));
			return "traineeCoursesDetails";
		}
	}
	

}
