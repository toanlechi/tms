package vn.tms.dao;

import org.springframework.data.repository.CrudRepository;

import vn.tms.entity.User;

public interface UserDAO extends CrudRepository<User, Integer> {
	
	User findByEmail(String email);
	
	User findByToken(String token);
	
}
