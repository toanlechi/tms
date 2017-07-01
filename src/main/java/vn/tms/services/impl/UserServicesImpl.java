package vn.tms.services.impl;

import java.util.Arrays;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import vn.tms.dao.UserDAO;
import vn.tms.entity.User;
import vn.tms.services.UserServices;

@Service
public class UserServicesImpl implements UserServices {
	@Autowired
	UserDAO userDAO;
	
	@Autowired
	private PasswordEncoder passwordEncoder;

	@Override
	public User findByEmail(String email) {
		return userDAO.findByEmail(email);
	}

	@Override
	public void update(User user) {
		userDAO.save(user);
	}

	@Override
	public User findByToken(String token) {
		return userDAO.findByToken(token);
	}

	@Override
	public User findOne(Integer id) {
		return userDAO.findOne(id);
	}

	@Override
	public void update(User user, String password) {
		user.setPassword(passwordEncoder.encode(password));
		user.setUpdatedAt(new Date());
		
		userDAO.save(user);
	}

	@Override
	public String validatePasswordResetToken(long id, String token) {
		User user = userDAO.findByToken(token);
		
		if (user == null || user.getId() != id){
			return "invalidToken";
		}
		
		long timeStart = Long.parseLong(token.substring(0, 13));
		long timeEnd = System.currentTimeMillis();
		
		if (timeEnd - timeStart > 86400000){
			return "expired";
		}
		 final Authentication auth = new UsernamePasswordAuthenticationToken
				 (user, null, Arrays.asList(new SimpleGrantedAuthority("CHANGE_PASSWORD_PRIVILEGE")));
	        SecurityContextHolder.getContext()
	            .setAuthentication(auth);
	        
		return null;
	}

}
