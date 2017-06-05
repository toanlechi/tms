package vn.tms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DungController {
	@RequestMapping("/login")
	public String login(Model model) {
		return "login";
	}

	@RequestMapping("/trainingStaffProfile")
	public String trainingStaffProfile() {
		return "trainingStaffProfile";

	}

}
