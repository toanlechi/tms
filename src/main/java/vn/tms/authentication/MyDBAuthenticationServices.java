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

import vn.tms.entity.Account;
import vn.tms.services.AccountServices;

@Service
public class MyDBAuthenticationServices implements UserDetailsService {

	@Autowired
	private AccountServices accountServices;

	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
		Account account = accountServices.findByEmail(email);
		if (account == null) {
			throw new UsernameNotFoundException("User " + email + " was not found in the database");
		}
		
		System.out.println(account.getEmail() + " -  " + account.getPassword());

		String role = String.valueOf(account.getRole());

		List<GrantedAuthority> grantList = new ArrayList<>();

		if (role != null) {
			GrantedAuthority authority = new SimpleGrantedAuthority("ROLE_" + role);
			grantList.add(authority);
		}
		UserDetails userDetails = (UserDetails) new org.springframework.security.core.userdetails.User(
				account.getEmail(), account.getPassword(), grantList);

		return userDetails;

	}

}
