package vn.tms.utils;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class Utils {
	
	
	
	public static void main(String[] args) {
		BCryptPasswordEncoder be = new BCryptPasswordEncoder();
		System.out.println(be.encode("123123"));
	}
}
