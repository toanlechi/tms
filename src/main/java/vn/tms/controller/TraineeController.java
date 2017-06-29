package vn.tms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class TraineeController {
	
	@PostMapping("/uploadExcel")
	@ResponseBody
	public String uploadFileExcel(@RequestParam("file") MultipartFile multipartFile){
	
		
		
		return "success";
	}
}
