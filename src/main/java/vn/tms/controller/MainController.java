package vn.tms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	@RequestMapping("/demo")
	public String demo(Model model){
		return "demo";
	}
	
	@RequestMapping("/training")
	public String training(Model model){
		return "training_staff";
	}
	
	
}
