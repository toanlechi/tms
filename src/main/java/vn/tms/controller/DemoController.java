package vn.tms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class DemoController {

	@GetMapping(value = "/demo")
	@ResponseBody
	public String index(Model model) {
		
		
		return "demo";
	}
}
