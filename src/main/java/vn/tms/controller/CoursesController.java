package vn.tms.controller;

import java.security.Principal;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import vn.tms.entity.Category;
import vn.tms.entity.Courses;
import vn.tms.entity.Topic;
import vn.tms.entity.Trainee;
import vn.tms.entity.TrainingStaff;
import vn.tms.services.CategoryServices;
import vn.tms.services.CoursesServices;
import vn.tms.services.TopicServices;
import vn.tms.services.TraineeServices;
import vn.tms.services.TrainingStaffServices;

@Controller
public class CoursesController {

	@Autowired
	private CoursesServices coursesServices;

	@Autowired
	private TopicServices topicServices;

	@Autowired
	private CategoryServices categoryServices;

	@Autowired
	private TrainingStaffServices trainingStaffService;

	@Autowired
	private TraineeServices traineeServices;

	@GetMapping("/courses")
	public ModelAndView courses() {
		ModelAndView mv = new ModelAndView("courses");

		List<Courses> listCourses = coursesServices.findAll();
		mv.addObject("listCourses", listCourses);

		return mv;
	}

	@GetMapping("/courses/add")
	public String coursesAdd(Model model) {
		List<Category> categories = categoryServices.findAll();
		model.addAttribute("categories", categories);
		return "courses_add";
	}

	@PostMapping("/courses/add")
	public String coursesAddPost(@RequestParam(value = "coursesId", defaultValue = "0") int coursesId,
			@RequestParam("category") int categoryId, @RequestParam("name") String name,
			@RequestParam("description") String description, Principal principal) {
		String email = principal.getName();
		TrainingStaff trainingStaff = trainingStaffService.findByEmail(email);
		Category category = categoryServices.findOne(categoryId);

		Courses courses = new Courses(name, description, new Date(), category, trainingStaff);
		if (coursesId != 0) {
			courses.setId(coursesId);
		}
		coursesServices.save(courses);

		return "redirect:/courses";
	}

	@GetMapping("/courses/{coursesId}")
	public ModelAndView coursesDetail(@PathVariable("coursesId") int coursesId) {
		ModelAndView mv = new ModelAndView("courses_detail");

		Courses courses = coursesServices.findOne(coursesId);
		List<Topic> topics = topicServices.findByCourses(courses);
		List<Trainee> trainees = traineeServices.findByCoursesId(coursesId);

		mv.addObject("courses", courses);
		mv.addObject("listTopic", topics);
		mv.addObject("listTrainee", trainees);

		return mv;
	}

	@GetMapping("/courses/{coursesId}/edit")
	public ModelAndView coursesEdit(@PathVariable("coursesId") int coursesId, Model model) {
		ModelAndView mv = new ModelAndView("courses_add");
		Courses courses = coursesServices.findOne(coursesId);
		List<Category> categories = categoryServices.findAll();
		mv.addObject("courses", courses);
		mv.addObject("categories", categories);
		return mv;
	}

	@GetMapping("/courses/{coursesId}/remove")
	@ResponseBody
	public String coursesRemove(@PathVariable("coursesId") int coursesId) {
		coursesServices.delete(coursesId);
		return "success";
	}

}
