package vn.tms.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vn.tms.dao.CoursesDAO;
import vn.tms.entity.Category;
import vn.tms.entity.Courses;
import vn.tms.services.CoursesServices;

@Service
public class CoursesServicesImpl implements CoursesServices{

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
	public List<Courses> findByTraineeId(int id) {
		return coursesDAO.findByListTrainee_id(id);
	}

	
}
