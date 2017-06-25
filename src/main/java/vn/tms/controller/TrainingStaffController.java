package vn.tms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TrainingStaffController {

	
	@GetMapping("/traingStaff")
	public ModelAndView homeTrainingSatff(){
		ModelAndView mv=new ModelAndView("trainingStaff");
		
		
		
		return mv;
	}
}
