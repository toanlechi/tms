package vn.tms.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vn.tms.dao.CoursesDAO;
import vn.tms.entity.Category;
import vn.tms.entity.Courses;
import vn.tms.services.CoursesServices;
import vn.tms.utils.Utils;

@Service
public class CoursesServicesImpl implements CoursesServices {

	@Autowired
	private CoursesDAO coursesDAO;

	@Override
	public List<Courses> findAll() {
		return coursesDAO.findAll();
	}

	@Override
	public List<Courses> findByCategory(Category category) {
		return coursesDAO.findByCategory(category);
	}

	@Override
	public Courses findOne(int id) {
		return coursesDAO.findOne(id);
	}

	@Override
	public void save(Courses courses) {
		coursesDAO.save(courses);

	}

	@Override
	public void delete(int id) {
		coursesDAO.delete(id);
	}

	@Override
	public List<Courses> findByName(String name) {
		return coursesDAO.findByName(name);
	}

	@Override
	public List<Courses> search(String text, String searchBy, String dateFrom, String dateTo, int categoryId) {
		if (searchBy.equals("name")) {
			if (categoryId == 0) {
				if (dateTo.equals("")) {
					System.out.println("name");
					return coursesDAO.findByNameContaining(text);
				} else {
					if (text == null || text.equals("")) {
						System.out.println("date between");
						return coursesDAO.findByCreatedAtBetween(Utils.getDate(dateFrom), Utils.getDate(dateTo));
					} else {
						System.out.println("name date between");
						return coursesDAO.findByNameDate(Utils.getDate(dateFrom), Utils.getDate(dateTo), text);
					}
				}
			} else {
				if (dateTo.equals("")) {
					if (text.equals("")){
						System.out.println("category");
						return coursesDAO.findByCategory_id(categoryId);
					} else {
						System.out.println("category name");
						return coursesDAO.findByCategory_idAndNameContaining(categoryId, text);
					}
				} else {
					if (text == null || text.equals("")) {
						System.out.println("category date between");
						return coursesDAO.findByCategory_idAndCreatedAtBetween(categoryId, Utils.getDate(dateFrom),
								Utils.getDate(dateTo));
					} else {
						System.out.println("category name date between");
						return coursesDAO.findByCategoryNameDate(categoryId, Utils.getDate(dateFrom),
								Utils.getDate(dateTo), text);
					}
				}
			}

		} else {
			if (categoryId == 0) {
				System.out.println("trainingSatff");
				return coursesDAO.findByTrainingStaff_nameStartingWith(text);
			} else {
				System.out.println("category trainingStaff");
				return coursesDAO.findByCategory_idAndTrainingStaff_nameStartingWith(categoryId, text);
			}
		}

	}

	@Override
	public int countByTrainingStaff(int id) {
		return coursesDAO.countByTrainingStaff_id(id);
	}

}
