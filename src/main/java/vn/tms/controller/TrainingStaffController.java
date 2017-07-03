package vn.tms.controller;

import java.security.Principal;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import vn.tms.entity.TrainingStaff;
import vn.tms.services.CategoryServices;
import vn.tms.services.CoursesServices;
import vn.tms.services.TopicServices;
import vn.tms.services.TrainingStaffServices;
import vn.tms.validator.TrainingStaffProfileValidator;
import vn.tms.validator.TrainingStaffValidator;

@Controller
public class TrainingStaffController {
	@Autowired
	TrainingStaffServices trainingStaffServices;

	@Autowired
	TrainingStaffValidator trainingStaffValidator;

	@Autowired
	TrainingStaffProfileValidator trainingStaffProfileValidator;

	@Autowired
	CategoryServices categoryServices;

	@Autowired
	CoursesServices coursesServices;

	@Autowired
	TopicServices topicServices;

	@Autowired
	private PasswordEncoder passwordEncode;

	@GetMapping(value = "/admin/trainingStaffManager")
	public String index(Model model) {
		model.addAttribute("listTrainingStaff", trainingStaffServices.findAll());

		return "trainingStaffList";
	}

	@GetMapping(value = "/admin/trainingStaffManager/add")
	public String add(Model model) {
		model.addAttribute("trainingStaff", new TrainingStaff());

		return "trainingStaffAdd";
	}

	@PostMapping(value = "/admin/trainingStaffManager/add")
	public String save(@Valid TrainingStaff trainingStaff, BindingResult result, Model model,
			RedirectAttributes redirect) {

		trainingStaffValidator.validate(trainingStaff, result);
		if (result.hasErrors())
			return "trainingStaffAdd";

		trainingStaffServices.create(trainingStaff);

		redirect.addFlashAttribute("success", "Saved training staff " + trainingStaff.getName() + " successfully!");
		return "redirect:/admin/trainingStaffManager";
	}

	@GetMapping(value = "admin/trainingStaffManager/{id}/edit")
	public String edit(@PathVariable int id, Model model) {
		TrainingStaff trainingStaff = trainingStaffServices.findOne(id);
		if (trainingStaff == null) {
			return "404";
		} else {
			model.addAttribute("trainingStaff", trainingStaff);
			return "trainingStaffEdit";
		}
	}

	@PostMapping(value = "admin/trainingStaffManager/update")
	public String update(@ModelAttribute("trainingStaff") @Valid TrainingStaff trainingStaff, BindingResult result,
			@RequestParam(name = "st", required = false) String status, Model model, RedirectAttributes redirect) {
		trainingStaffValidator.validate(trainingStaff, result);

		if (result.hasErrors()) {
			return "trainingStaffEdit";
		}

		trainingStaffServices.update(trainingStaff, status);

		redirect.addFlashAttribute("success", "Update training staff " + trainingStaff.getName() + " successfully!");
		return "redirect:/admin/trainingStaffManager";
	}

	@GetMapping(value = "/admin/trainingStaffManager/{id}/delete")
	public String delete(@PathVariable int id, RedirectAttributes redirect) {
		TrainingStaff trainingStaff = trainingStaffServices.findOne(id);
		if (trainingStaff == null) {
			return "404";
		} else {
			trainingStaffServices.delete(trainingStaff);
			redirect.addFlashAttribute("success",
					"Delete training staff " + trainingStaff.getName() + " successfully!");
			return "redirect:/admin/trainingStaffManager";
		}
	}

	@GetMapping("/trainingStaff/profile")
	public String profile(Principal principal, Model model) {
		TrainingStaff trainingStaff = trainingStaffServices.findByEmail(principal.getName());
		trainingStaff.setPassword("");
		model.addAttribute("trainingStaff", trainingStaff);
		model.addAttribute("categoryCreated", categoryServices.coutByTrainingStaff(trainingStaff.getId()));
		model.addAttribute("coursesCreated", coursesServices.countByTrainingStaff(trainingStaff.getId()));
		model.addAttribute("topicCreated", topicServices.coutByTrainingStaff(trainingStaff.getId()));

		return "training_staff_profile";
	}

}
