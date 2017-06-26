package vn.tms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DemoController {

	@GetMapping(value = "/demo")
	public String index(Model model) {
		model.addAttribute("demo", "thong tin cong nghe");
		return "demo";
	}
}
