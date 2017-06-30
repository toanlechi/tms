package vn.tms.authentication;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import vn.tms.entity.User;
import vn.tms.services.UserServices;

@Service
public class MyDBAuthenticationServices implements UserDetailsService {

	@Autowired
	private UserServices userServices;

	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
		User user = userServices.findByEmail(email);
		if (user == null) {
			throw new UsernameNotFoundException("User " + email + " was not found in the database");
		}
		
		System.out.println(user.getEmail() + " -  " + user.getPassword());

		String role = String.valueOf(user.getRole());

		List<GrantedAuthority> grantList = new ArrayList<>();

		if (role != null) {
			GrantedAuthority authority = new SimpleGrantedAuthority("ROLE_" + role);
			grantList.add(authority);
		}
		UserDetails userDetails = (UserDetails) new org.springframework.security.core.userdetails.User(
				user.getEmail(), user.getPassword(), grantList);

		return userDetails;

	}

}
