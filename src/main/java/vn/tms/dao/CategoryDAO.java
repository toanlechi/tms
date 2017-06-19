package vn.tms.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import vn.tms.entity.Category;

public interface CategoryDAO extends CrudRepository<Category, Integer> {
	List<Category> findAll();
}
