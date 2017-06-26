package vn.tms.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import vn.tms.entity.Trainer;
import vn.tms.services.TrainerServices;
import vn.tms.validator.TrainerEditValidator;
import vn.tms.validator.TrainerValidator;

@Controller
public class TrainerController {
	@Autowired
	TrainerServices trainerService;

	@Autowired
	TrainerValidator trainerValidator;

	@Autowired
	TrainerEditValidator trainerEditValidator;

	@GetMapping(value = "/admin/trainerManager")
	public String index(Model model) {
		model.addAttribute("listTrainer", trainerService.findAll());

		return "trainerList";
	}

	@GetMapping(value = "/admin/trainerManager/add")
	public String add(Model model) {
		model.addAttribute("trainer", new Trainer());

		return "trainerAdd";
	}

	@PostMapping(value = "/admin/trainerManager/add")
	public String save(@Valid Trainer trainer, BindingResult result, Model model, RedirectAttributes redirect) {

		trainerValidator.validate(trainer, result);
		if (result.hasErrors())
			return "trainerAdd";

		trainerService.create(trainer);

		redirect.addFlashAttribute("success", "Saved trainer " + trainer.getName() + " successfully!");
		return "redirect:/admin/trainerManager";
	}

	@GetMapping(value = "admin/trainerManager/{id}/edit")
	public String edit(@PathVariable int id, Model model) {
		Trainer trainer = trainerService.findOne(id);
		if (trainer == null) {
			return "404";
		} else {
			model.addAttribute("trainer", trainer);
			return "trainerEdit";
		}
	}

	@PostMapping(value = "admin/trainerManager/update")
	public String update(@ModelAttribute("trainer") @Valid Trainer trainer, BindingResult result,
			@RequestParam(name = "st", required = false) String status, Model model, RedirectAttributes redirect) {
		trainerEditValidator.validate(trainer, result);

		if (result.hasErrors()) {
			return "trainerEdit";
		}

		trainerService.update(trainer, status);

		redirect.addFlashAttribute("success", "Update trainer " + trainer.getName() + " successfully!");
		return "redirect:/admin/trainerManager";
	}

	@GetMapping(value = "/admin/trainerManager/{id}/delete")
	public String delete(@PathVariable int id, RedirectAttributes redirect) {
		Trainer trainer = trainerService.findOne(id);
		if (trainer == null) {
			return "404";
		} else {
			trainerService.delete(trainer);
			redirect.addFlashAttribute("success", "Delete trainer " + trainer.getName() + " successfully!");
			return "redirect:/admin/trainerManager";
		}
	}

}
