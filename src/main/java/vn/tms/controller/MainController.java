package vn.tms.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import vn.tms.entity.Account;
import vn.tms.entity.User;
import vn.tms.services.TraineeServices;
import vn.tms.services.UserServices;
import vn.tms.utils.Constant;

@Controller
public class MainController {

	@Autowired
	private TraineeServices traineeServices;

	@Autowired
	UserServices userServices;

	@GetMapping("/login")
	public String login() {
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

	@GetMapping(value = "/user/forgotPassword")
	public String forgotPassword() {
		return "forgotPass";
	}

	@GetMapping(value = "/user/changePassword")
	public String resetPassword(Model model, @RequestParam("id") int id, @RequestParam("token") String token,
			RedirectAttributes redirect) {
		String result = userServices.validatePasswordResetToken(id, token);
		if (result != null) {
			redirect.addFlashAttribute("error", "Can not reset password!");
			return "redirect:/login";
		} else {
			return "redirect:/user/resetPassword";
		}
	}

	@GetMapping(value = "/user/resetPassword")
	public String resetPassword() {
		return "resetPass";
	}

	@PostMapping(value = "/user/savePassword")
	public String savePassWord(@RequestParam(name = "password", required = false) String password,
			RedirectAttributes redirect) {
		User user = (User) SecurityContextHolder
				.getContext()
				.getAuthentication()
				.getPrincipal();
		System.out.println(user.getEmail());
		System.out.println(password);
		
		userServices.update(user, password);
		redirect.addFlashAttribute("success", "Reset password success!");
		return "redirect:/login";
	}

}
