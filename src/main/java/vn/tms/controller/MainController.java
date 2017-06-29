package vn.tms.controller;

import java.security.Principal;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	
	@GetMapping(value = "/forgotPassword")
	public String forgotPassword() {
		return "forgotPass";
	}

	@GetMapping(value = "/user/changePassword")
	public String resetPassword(Model model, @RequestParam("id") int id, @RequestParam("token") String token,
			RedirectAttributes redirect) {

		if (!validatePasswordResetToken(id, token)) {
			redirect.addFlashAttribute("error", "Khong the reset password!");
			return "redirect:/login";
		} else {
			User user = userServices.findOne(id);
			model.addAttribute("user", user);
			return "resetPass";
		}
	}

	@PostMapping(value = "/user/savePassword")
	public String savePassWord(@ModelAttribute("user") @Valid User user,
			BindingResult result, @RequestParam(name = "password", required = false) String password,
			Model model,RedirectAttributes redirect) {
		
		userServices.update(user,password);
		redirect.addFlashAttribute("success", "reset password!");
		return "redirect:/login";
	}

	private boolean validatePasswordResetToken(int id, String token) {
		User user = userServices.findByToken(token);
		long timeStart = Long.parseLong(token.substring(0, 13));
		long timeEnd = System.currentTimeMillis();

		if (user == null || user.getId() != id) {
			return false;
		} else if (timeEnd - timeStart > 86400000) {
			return false;
		} else
			return true;
	}

}
