package vn.tms.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import vn.tms.entity.Account;
import vn.tms.services.TraineeServices;
import vn.tms.utils.Constant;

@Controller
public class MainController {

	@Autowired
	private TraineeServices traineeServices;

	@GetMapping("/login")
	public String login() {
		System.out.println("-----------");
		return "login";
	}

	@GetMapping("/loginSuccess")
	public String loginSuccess(Principal principal) {
		String email = principal.getName();
		Account account = traineeServices.findByEmail(email);

		if (account.getRole() == Constant.ROLE.ADMIN) {
			return "redirect:/admin/trainerManager";
		} else if (account.getRole() == Constant.ROLE.TRAININGSTAFF) {
			return "redirect:/category";
		}

		return "";
	}

}
