package vn.tms.services;

import vn.tms.entity.User;

public interface UserServices {

	User findByEmail(String email);

	void update(User user);
	
	void update(User user, String password);
	
	User findOne(Integer id);
	
	User findByToken(String token);
	
	String validatePasswordResetToken(long id, String token);
	
}
