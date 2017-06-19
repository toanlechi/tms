package vn.tms.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vn.tms.dao.CategoryDAO;
import vn.tms.entity.Category;
import vn.tms.services.CategoryServices;

@Service
public class CategoryServicesImpl implements CategoryServices {

	@Autowired
	private CategoryDAO categoryDAO;

	@Override
	public List<Category> findAll() {
		return categoryDAO.findAll();
	}

}
