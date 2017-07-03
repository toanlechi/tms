package vn.tms.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import vn.tms.entity.Category;
import vn.tms.entity.Courses;
import vn.tms.entity.MailContent;
import vn.tms.entity.Trainee;
import vn.tms.entity.Trainer;
import vn.tms.entity.TrainingStaff;
import vn.tms.entity.User;
import vn.tms.services.CategoryServices;
import vn.tms.services.CoursesServices;
import vn.tms.services.TraineeServices;
import vn.tms.services.TrainerServices;
import vn.tms.services.TrainingStaffServices;
import vn.tms.services.UserServices;
import vn.tms.utils.Constant;
import vn.tms.utils.Utils;
import vn.tms.utils.ValidDataPattern;

@Controller
@RequestMapping("/ajax")
public class AjaxController {

	@Autowired
	private CategoryServices categoryServices;

	@Autowired
	private CoursesServices coursesServices;

	@Autowired
	TrainerServices trainerServices;

	@Autowired
	TrainingStaffServices trainingStaffServices;

	@Autowired
	UserServices userServices;

	@Autowired
	private TraineeServices traineeServices;

	@Autowired
	private PasswordEncoder passwordEncode;

	@PostMapping("/check_category_name")
	@ResponseBody
	public String checkCategoryName(@RequestParam("name") String categoryName) {
		List<Category> categories = categoryServices.findByName(categoryName);
		if (categories.size() > 0) {
			return "false";
		}
		return "true";
	}

	@PostMapping("/check_courses_name")
	@ResponseBody
	public String checkCoursesName(@RequestParam("name") String coursesName) {
		List<Courses> courses = coursesServices.findByName(coursesName);
		if (courses.size() > 0) {
			return "false";
		}
		return "true";
	}

	/*
	 * Trainer Ajax
	 */

	@GetMapping(value = "/trainer/email")
	public @ResponseBody String checkTrainerEmail(@RequestParam("email") String email) {
		Trainer dbTrainer = trainerServices.findByEmail(email);

		if ("".equals(email)) {
			return "Email is required";
		} else if (!ValidDataPattern.validateEmail(email)) {
			return "Email is not valid type";
		} else if (dbTrainer != null) {
			return "This email already exists";
		} else
			return "";
	}

	/*
	 * Training Staff Ajax
	 */

	@GetMapping(value = "/trainingStaff/email")
	public @ResponseBody String checkTrainingStaffEmail(@RequestParam("email") String email) {
		TrainingStaff dbTrainingStaff = trainingStaffServices.findByEmail(email);

		if ("".equals(email)) {
			return "Email is required";
		} else if (!ValidDataPattern.validateEmail(email)) {
			return "Email is not valid type";
		} else if (dbTrainingStaff != null) {
			return "This email already exists";
		} else
			return "";
	}

	/*
	 * forgot Password
	 */
	@PostMapping(value = "/resetPassword")
	public @ResponseBody String resetPassword(HttpServletRequest request, @RequestParam("email") String email) {
		User user = userServices.findByEmail(email);

		if (user == null) {
			return "false";
		} else {
			String token = System.currentTimeMillis() + UUID.randomUUID().toString();
			user.setToken(token);
			userServices.update(user);

			String link = Utils.getBaseUrl(request) + "/user/changePassword?id=" + user.getId() + "&token=" + token;
			String body = Utils.contentEmail(Utils.contentSendMailForgotPass(user.getName(), link));
			Utils.sendMail1(new MailContent("asd@gmail.com", email, "Reset password", body));

			return "true";
		}
	}

	@PostMapping("/uploadExcel")
	public ModelAndView uploadFileExcel(@RequestParam("file") MultipartFile file,
			@RequestParam("coursesId") int coursesId, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("table_excel");

		String fileName = UUID.randomUUID().toString();
		if (file.isEmpty()) {
			// TODO
		}

		String ex = file.getOriginalFilename();
		ex = ex.substring(ex.lastIndexOf("."), ex.length());

		String url = request.getServletContext().getRealPath("/files/") + "/" + fileName + ex;
		try {
			System.out.println();
			byte[] bytes = file.getBytes();
			Path path = Paths.get(url);
			Files.write(path, bytes);

		} catch (IOException e) {
			e.printStackTrace();
		}

		try {

			FileInputStream file2 = new FileInputStream(new File(url));
			// Get the workbook instance for XLS file
			XSSFWorkbook workbook = new XSSFWorkbook(file2);

			// Get first sheet from the workbook
			XSSFSheet sheet = workbook.getSheetAt(0);

			// Iterate through each rows from first sheet
			Iterator<Row> rowIterator = sheet.iterator();

			List<Trainee> listTrainee = new ArrayList<>();
			Trainee trainee;
			if (rowIterator.hasNext()) {
				rowIterator.next();
			}
			while (rowIterator.hasNext()) {
				trainee = new Trainee();
				Row row = rowIterator.next();

				// For each row, iterate through each columns
				Iterator<Cell> cellIterator = row.cellIterator();
				int i = 0;
				while (cellIterator.hasNext()) {
					System.out.print(i + "\t\t");
					Cell cell = cellIterator.next();

					switch (cell.getCellType()) {
					case Cell.CELL_TYPE_BOOLEAN:
						System.out.print(cell.getBooleanCellValue() + "\t\t");
						break;
					case Cell.CELL_TYPE_NUMERIC:
						System.out.print(cell.getNumericCellValue() + "\t\t");

						break;
					case Cell.CELL_TYPE_STRING:
						System.out.print(cell.getStringCellValue() + "\t\t");
						String value = cell.getStringCellValue();

						if (i == 1) {
							trainee.setName(value);
						} else if (i == 2) {
							trainee.setEmail(value);
							trainee.setPassword(passwordEncode.encode(value));
						}
						break;
					}
					i++;
				}
				if (trainee.getEmail() != null && trainee.getEmail() != "") {
					Trainee tmp = traineeServices.findByEmail(trainee.getEmail());
					if (tmp == null) {
						trainee.setRole(Constant.ROLE.TRAINEE);
						traineeServices.save(trainee);
						tmp = traineeServices.findByEmail(trainee.getEmail());
					}
					listTrainee.add(tmp);
				}
				System.out.println("");
			}
			file2.close();

			mv.addObject("trainees", listTrainee);

			Courses courses = coursesServices.findOne(coursesId);
			courses.setListTrainee(new HashSet<>(listTrainee));

			System.out.println("---");
			coursesServices.save(courses);

		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return mv;
	}

	@PostMapping("/searchCategory")
	@ResponseBody
	public ModelAndView findCategory(@RequestParam(value = "text", defaultValue = "") String text,
			@RequestParam("searchBy") String searchBy,
			@RequestParam(value = "dateFrom", defaultValue = "") String dateFrom,
			@RequestParam(value = "dateTo", defaultValue = "") String dateTo) {
		ModelAndView mv = new ModelAndView("table_category");
		List<Category> categories = categoryServices.search(text, searchBy, dateFrom, dateTo);
		mv.addObject("categorys", categories);
		return mv;

	}

	@PostMapping("/searchCourses")
	@ResponseBody
	public ModelAndView findCourses(@RequestParam(value = "text", defaultValue = "") String text,
			@RequestParam("searchBy") String searchBy,
			@RequestParam(value = "dateFrom", defaultValue = "") String dateFrom,
			@RequestParam(value = "dateTo", defaultValue = "") String dateTo,
			@RequestParam(value = "categoryId",defaultValue="0") int categoryId) {
		ModelAndView mv = new ModelAndView("table_courses");
		List<Courses> courses = coursesServices.search(text, searchBy, dateFrom, dateTo, categoryId);
		mv.addObject("listCourses", courses);
		return mv;
	}

}
