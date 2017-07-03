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

import vn.tms.entity.Courses;
import vn.tms.entity.MailContent;
import vn.tms.entity.Topic;
import vn.tms.entity.Trainer;
import vn.tms.entity.TrainingStaff;
import vn.tms.services.CoursesServices;
import vn.tms.services.TopicServices;
import vn.tms.services.TrainerServices;
import vn.tms.services.TrainingStaffServices;
import vn.tms.utils.Utils;

@Controller
public class TopicController {
	@Autowired
	private TopicServices topicServices;

	@Autowired
	private CoursesServices coursesServices;

	@Autowired
	private TrainingStaffServices trainingStaffService;

	@Autowired
	private TrainerServices trainerServices;

	@GetMapping("/topic")
	public ModelAndView topic() {
		ModelAndView mv = new ModelAndView("topic");
		List<Topic> topics = topicServices.findAll();
		List<Courses> courses = coursesServices.findAll();
		mv.addObject("topics", topics);
		mv.addObject("listCourses", courses);

		return mv;
	}

	@GetMapping("/topic/{topicId}")
	public String topicDetail(@PathVariable("topicId") int topicId, Model model) {
		Topic topic = topicServices.findOne(topicId);
		if (topic == null) {
			return "404";
		}
		model.addAttribute("topic", topic);

		return "topic_detail";
	}

	@GetMapping("/topic/add")
	public String topicAdd(Model model) {
		List<Courses> listCourses = coursesServices.findAll();
		List<Trainer> listTrainer = trainerServices.findAll();
		model.addAttribute("listCourses", listCourses);
		model.addAttribute("listTrainer", listTrainer);
		return "topic_add";
	}

	@PostMapping("/topic/add")
	public String topicAddPost(@RequestParam(value = "topicId", defaultValue = "0") int topicId,
			@RequestParam("coursesId") int coursesId, @RequestParam("name") String name,
			@RequestParam("timeStart") String timeStart, @RequestParam("timeEnd") String timeEnd,
			@RequestParam(value = "mo", defaultValue = "off") String mo,
			@RequestParam(value = "tu", defaultValue = "off") String tu,
			@RequestParam(value = "we", defaultValue = "off") String we,
			@RequestParam(value = "th", defaultValue = "off") String th,
			@RequestParam(value = "fr", defaultValue = "off") String fr,
			@RequestParam(value = "sa", defaultValue = "off") String sa,
			@RequestParam(value = "su", defaultValue = "off") String su, @RequestParam("trainerId") int trainerId,
			@RequestParam("description") String description, Principal principal) {
		String email = principal.getName();
		TrainingStaff trainingStaff = trainingStaffService.findByEmail(email);
		Trainer trainer = trainerServices.findOne(trainerId);
		Courses courses = coursesServices.findOne(coursesId);
		int dayOfWeek = Utils.convertToDec(Utils.format(mo, tu, we, th, fr, sa, su));

		Topic topic = new Topic(name, description, Utils.getDateByTime(timeStart), Utils.getDateByTime(timeEnd),
				dayOfWeek, new Date(), courses, trainingStaff, trainer);
		if (topicId != 0) {
			topic.setId(topicId);
		}

		topicServices.save(topic);

		// send email notify assigned trainer into topic
		MailContent mailContent = new MailContent(trainer.getEmail(), "Assigned", "");
		Utils.sendMail(mailContent);

		return "redirect:/topic";
	}

	@GetMapping("/topic/{topicId}/edit")
	public String topicEdit(@PathVariable("topicId") int topicId, Model model,  Principal principal) {
		Topic topic = topicServices.findOne(topicId);
		if (topic == null) {
			return "404";
		}
		if (!principal.getName().equals(topic.getTrainingStaff().getEmail())){
			return "403";
		}
		List<Courses> listCourses = coursesServices.findAll();
		List<Trainer> listTrainer = trainerServices.findAll();

		for (String tr : Utils.getDayOfWeek(topic.getDay())) {
			model.addAttribute("day" + tr, "checked");
		}

		model.addAttribute("topic", topic);
		model.addAttribute("listCourses", listCourses);
		model.addAttribute("listTrainer", listTrainer);

		return "topic_add";
	}

	@GetMapping("/topic/{topicId}/remove")
	@ResponseBody
	public String topicRemove(@PathVariable("topicId") int topicId) {
		topicServices.delete(topicId);
		return "success";
	}

}
