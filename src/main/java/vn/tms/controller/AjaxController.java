package vn.tms.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import vn.tms.entity.Category;
import vn.tms.entity.Courses;
import vn.tms.services.CategoryServices;
import vn.tms.services.CoursesServices;

@Controller
@RequestMapping("/ajax")
public class AjaxController {

	@Autowired
	private CategoryServices categoryServices;

	@Autowired
	private CoursesServices coursesServices;

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
}
