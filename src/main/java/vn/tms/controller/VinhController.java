package vn.tms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class VinhController {
	@RequestMapping("/traineeprofile")
	public String login(){
		return "traineeprofile";
	}
}
