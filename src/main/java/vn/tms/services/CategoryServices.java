package vn.tms.services;

import java.util.List;

import vn.tms.entity.Category;

public interface CategoryServices {
	
	List<Category> findAll();
	
	Category findOne(int id);
	
	void save(Category category);
	
	void delete(int id);

}
