package vn.tms.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vn.tms.dao.CategoryDAO;
import vn.tms.entity.Category;
import vn.tms.services.CategoryServices;
import vn.tms.utils.Utils;

@Service
public class CategoryServicesImpl implements CategoryServices {

	@Autowired
	private CategoryDAO categoryDAO;

	@Override
	public List<Category> findAll() {
		return categoryDAO.findAll();
	}

	@Override
	public Category findOne(int id) {
		return categoryDAO.findOne(id);
	}

	@Override
	public void save(Category category) {
		categoryDAO.save(category);

	}

	@Override
	public void delete(int id) {
		categoryDAO.delete(id);
	}

	@Override
	public List<Category> findByName(String name) {
		return categoryDAO.findByName(name);
	}

	@Override
	public List<Category> search(String text, String searchBy, String dateFrom, String dateTo) {
		System.out.println("date From: " + dateFrom);
		System.out.println("date To: " + dateTo);
		if (searchBy.equals("name")) {
			if (text == null || text.equals("")) {
				return categoryDAO.findByCreatedAtBetween(Utils.getDate(dateFrom), Utils.getDate(dateTo));
			} else {
				if (dateFrom == null || dateFrom.equals("")) {
					System.out.println("name");
					return categoryDAO.findByNameContaining(text);
				} else {
					System.out.println("name-date");
					return categoryDAO.findByNameAndDate(text, Utils.getDate(dateFrom), Utils.getDate(dateTo));
				}
			}
		} else {
			return categoryDAO.findByTrainingStaff_nameStartingWith(text);
		}
	}

}
