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
import vn.tms.entity.Topic;
import vn.tms.entity.Trainer;
import vn.tms.entity.TrainingStaff;
import vn.tms.services.CoursesServices;
import vn.tms.services.TopicServices;
import vn.tms.services.TrainerServices;
import vn.tms.services.TrainingStaffServices;

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
		mv.addObject("topics", topics);

		return mv;
	}

	@GetMapping("/topic/{topicId}")
	public ModelAndView topicDetail(@PathVariable("topicId") int topicId) {
		ModelAndView mv = new ModelAndView("topic_detail");
		Topic topic = topicServices.findOne(topicId);
		mv.addObject("topic", topic);

		return mv;
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
			@RequestParam(value="mo", defaultValue="off") String mo, @RequestParam(value="tu", defaultValue="off") String tu,@RequestParam(value="we", defaultValue="off") String we,
			@RequestParam(value="th", defaultValue="off") String th, @RequestParam(value="fr", defaultValue="off") String fr,@RequestParam(value="sa", defaultValue="off") String sa,
			@RequestParam(value="su", defaultValue="off") String su,
			@RequestParam("description") String description, Principal principal) {
		String email = principal.getName();
		TrainingStaff trainingStaff = trainingStaffService.findByEmail(email);
		Courses courses = coursesServices.findOne(coursesId);

		Topic topic = new Topic(name, description, new Date(), courses, trainingStaff);
		if (topicId != 0) {
			topic.setId(topicId);
		}
		  
		System.out.println("------------");
		System.out.println(mo);
		System.out.println(tu);
		System.out.println(timeStart);
//		topicServices.save(topic);

		return "redirect:/topic";
	}

	@GetMapping("/topic/{topicId}/edit")
	public ModelAndView topicEdit(@PathVariable("topicId") int topicId) {
		ModelAndView mv = new ModelAndView("topic_add");
		Topic topic = topicServices.findOne(topicId);
		List<Courses> listCourses = coursesServices.findAll();
		List<Trainer> listTrainer = trainerServices.findAll();

		mv.addObject("topic", topic);
		mv.addObject("listCourses", listCourses);
		mv.addObject("listTrainer", listTrainer);

		return mv;
	}
	
	@GetMapping("/topic/{topicId}/remove")
	@ResponseBody
	public String topicRemove(@PathVariable("topicId") int topicId){
		topicServices.delete(topicId);
		return "success";
	}

}
