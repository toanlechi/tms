package vn.tms.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import vn.tms.entity.Category;
import vn.tms.entity.Courses;
import vn.tms.entity.Trainer;
import vn.tms.services.CategoryServices;
import vn.tms.services.CoursesServices;
import vn.tms.services.TrainerServices;
import vn.tms.utils.ValidDataPattern;

@Controller
@RequestMapping("/ajax")
public class AjaxController {

	@Autowired
	private CategoryServices categoryServices;

	@Autowired
	private CoursesServices coursesServices;
	
	@Autowired
	TrainerServices trainerServices;

	@PostMapping("/check_category_name")
	@ResponseBody
	public String checkCategoryName(@RequestParam("name") String categoryName) {
		List<Category> categories = categoryServices.findByName(categoryName);
		if (categories.size() > 0) {
			return "false";
		}
		return "true";
	}

	@PostMapping("/check_courses_name")
	@ResponseBody
	public String checkCoursesName(@RequestParam("name") String coursesName) {
		List<Courses> courses = coursesServices.findByName(coursesName);
		if (courses.size() > 0) {
			return "false";
		}
		return "true";
	}
	
	/*
	 * Trainer Ajax
	 */

	@GetMapping(value = "/trainer/email")
	public @ResponseBody String checkTrainerEmail(@RequestParam("email") String email) {
		Trainer dbTrainer = trainerServices.findByEmail(email);

		if ("".equals(email)) {
			return "Email is required";
		} else if (!ValidDataPattern.validateEmail(email)) {
			return "Email is not valid type";
		} else if (dbTrainer != null) {
			return "This email already exists";
		} else
			return "";
	}

	/*
	 * Training Staff Ajax
	 */

	@GetMapping(value = "/trainingStaff/email")
	public @ResponseBody String checkTrainingStaffEmail(@RequestParam("email") String email) {
		Trainer dbTrainer = trainerServices.findByEmail(email);

		if ("".equals(email)) {
			return "Email is required";
		} else if (!ValidDataPattern.validateEmail(email)) {
			return "Email is not valid type";
		} else if (dbTrainer != null) {
			return "This email already exists";
		} else
			return "";
	}
}
