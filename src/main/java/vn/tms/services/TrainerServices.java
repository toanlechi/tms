package vn.tms.services;

import org.springframework.security.core.userdetails.User;

public interface TrainerServices{
	
	User findByEmail(String email);
}
