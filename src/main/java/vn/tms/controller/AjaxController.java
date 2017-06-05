package vn.tms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/api")
public class AjaxController {
	
//	@Autowired
//	TopicServices topicServices;
	
	@RequestMapping(value="/vldTopic", method= RequestMethod.POST)
	@ResponseBody
	public String validate(@RequestParam("textInput") String nameTopic){
		System.out.println(nameTopic);
//		boolean a = topicServices.isExists(nameTopic);
		return "success";
	}
}
