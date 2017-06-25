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
import vn.tms.entity.Trainee;
import vn.tms.entity.TrainingStaff;
import vn.tms.services.CategoryServices;
import vn.tms.services.CoursesServices;
import vn.tms.services.TraineeServices;
import vn.tms.services.TrainingStaffServices;

@Controller
public class CategoryController {

	@Autowired
	private CategoryServices categoryServices;

	@Autowired
	private TrainingStaffServices trainingStaffService;

	@Autowired
	private CoursesServices coursesService;

	@Autowired
	private TraineeServices traineeServices;

	@GetMapping("/category")
	public ModelAndView category() {
		ModelAndView mv = new ModelAndView("category");

		List<Category> categorys = categoryServices.findAll();
		mv.addObject("categorys", categorys);

		System.out.println(categorys.size());

		return mv;
	}

	@GetMapping("/category/add")
	public String categoryAdd() {
		return "category_add";
	}

	@PostMapping("/category/add")
	public String categoryAddPost(@RequestParam(value = "categoryId", defaultValue = "0") int categoryId,
			@RequestParam("name") String name, @RequestParam("description") String description, Principal principal) {
		String email = principal.getName();
		TrainingStaff trainingStaff = trainingStaffService.findByEmail(email);
		Category category = new Category(name, description, new Date(), trainingStaff);
		if (categoryId != 0) {
			category.setId(categoryId);
		}
		categoryServices.save(category);

		return "redirect:/category";
	}

	@GetMapping("/category/{categoryId}")
	public ModelAndView categoryDetail(@PathVariable("categoryId") int categoryId) {
		ModelAndView mv = new ModelAndView("category_detail");

		System.out.println(categoryId);

		Category category = categoryServices.findOne(categoryId);
		List<Courses> listCourses = coursesService.findByCategory(category);
		mv.addObject("category", category);
		mv.addObject("listCourses", listCourses);

		return mv;
	}

	@GetMapping("/category/{categoryId}/edit")
	public String categoryEdit(@PathVariable("categoryId") int categoryId, Model model) {
		Category category = categoryServices.findOne(categoryId);
		model.addAttribute("category", category);
		return "category_add";
	}

	@GetMapping("/category/{categoryId}/remove")
	@ResponseBody
	public String categoryRemove(@PathVariable("categoryId") int categoryId) {
		categoryServices.delete(categoryId);

		return "success";
	}

	@GetMapping("/demo2")
	@ResponseBody
	public String demo() {

		TrainingStaff trainingStaff = new TrainingStaff("T", "123123", 1);
		trainingStaffService.save(trainingStaff);

		Trainee trainee1 = new Trainee("T1", "123123", 2);
		Trainee trainee2 = new Trainee("T2", "123123", 2);

		traineeServices.save(trainee1);
		traineeServices.save(trainee2);

		return "abc";
	}

	@GetMapping("/demo3")
	@ResponseBody
	public String demo3() {

		List<Trainee> trainees = traineeServices.findAll();
		System.out.println(trainees.size());

		List<TrainingStaff> trainingStaffs = trainingStaffService.findAll();
		System.out.println(trainingStaffs.size());

		return "abc";
	}

}
