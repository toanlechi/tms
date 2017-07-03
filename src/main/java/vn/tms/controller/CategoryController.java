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
import vn.tms.entity.TrainingStaff;
import vn.tms.services.CategoryServices;
import vn.tms.services.CoursesServices;
import vn.tms.services.TrainingStaffServices;

@Controller
public class CategoryController {

	@Autowired
	private CategoryServices categoryServices;

	@Autowired
	private TrainingStaffServices trainingStaffService;

	@Autowired
	private CoursesServices coursesService;

	@GetMapping("/category")
	public ModelAndView category() {
		ModelAndView mv = new ModelAndView("category");
		List<Category> categorys = categoryServices.findAll();
		mv.addObject("categorys", categorys);
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
	public String categoryDetail(@PathVariable("categoryId") int categoryId, Model model) {
		
		Category category = categoryServices.findOne(categoryId);
		if (category==null){
			return "404";
		}
		List<Courses> listCourses = coursesService.findByCategory(category);
		model.addAttribute("category", category);
		model.addAttribute("listCourses", listCourses);
		return "category_detail";
	}

	@GetMapping("/category/{categoryId}/edit")
	public String categoryEdit(@PathVariable("categoryId") int categoryId, Model model, Principal principal) {
		Category category = categoryServices.findOne(categoryId);
		if (category==null){
			return "404";
		}
		if (!principal.getName().equals(category.getTrainingStaff().getEmail())){
			return "403";
		}
		model.addAttribute("category", category);
		return "category_add";
	}

	@GetMapping("/category/{categoryId}/remove")
	@ResponseBody
	public String categoryRemove(@PathVariable("categoryId") int categoryId) {
		categoryServices.delete(categoryId);
		return "success";
	}

}
