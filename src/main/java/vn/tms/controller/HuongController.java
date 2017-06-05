package vn.tms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HuongController {

	@RequestMapping("/detail_categories")
	public String detailCategories(Model model) {
		return "detail_categories";
	}

	@RequestMapping("/detail_courses")
	public String detailCourses(Model model) {
		return "detail_courses";
	}
	
	@RequestMapping("/detail_topic")
	public String detailTopic(){
		return "detail_topic";
	}
}
