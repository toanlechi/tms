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
	 * */
	
	@PostMapping(value = "/trainer/name")
	public @ResponseBody String checkTrainerName(@RequestParam("name") String name) {
		if ("".equals(name)) {
			return "Name is required";
		} else if (name.length() < 3) {
			return "Name length must be greater than 3 characters";
		} else
			return "";
	}

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

	@GetMapping(value = "/trainer/password")
	public @ResponseBody String checkTrainerPassword(@RequestParam("password") String password) {
		if ("".equals(password)) {
			return "Password is required";
		} else if (password.length() < 8) {
			return "Password length must be greater than 8 characters";
		} else
			return "";
	}

	@GetMapping(value = "/trainer/confirmPassword")
	public @ResponseBody String checkTrainerConfirmPassword(@RequestParam("password") String password,
			@RequestParam("confirmPassword") String confirmPassword) {
		if ("".equals(confirmPassword)) {
			return "Confirm password is required";
		} else if (!password.equals(confirmPassword)) {
			return "Confirm password not matching";
		} else
			return "";
	}
	
	/*
	 * Training Staff Ajax
	 * */
	
	@GetMapping(value = "/trainingStaff/name")
	public @ResponseBody String checkTrainingStaffName(@RequestParam("name") String name) {
		if ("".equals(name)) {
			return "Name is required";
		} else if (name.length() < 3) {
			return "Name length must be greater than 3 characters";
		} else
			return "";
	}

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

	@GetMapping(value = "/trainingStaff/password")
	public @ResponseBody String checkTrainingStaffPassword(@RequestParam("password") String password) {
		if ("".equals(password)) {
			return "Password is required";
		} else if (password.length() < 8) {
			return "Password length must be greater than 8 characters";
		} else
			return "";
	}

	@GetMapping(value = "/trainingStaff/confirmPassword")
	public @ResponseBody String checkTrainingStaffConfirmPassword(@RequestParam("password") String password,
			@RequestParam("confirmPassword") String confirmPassword) {
		if ("".equals(confirmPassword)) {
			return "Confirm password is required";
		} else if (!password.equals(confirmPassword)) {
			return "Confirm password not matching";
		} else
			return "";
	}
}
