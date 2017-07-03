package vn.tms.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import vn.tms.authentication.MyDBAuthenticationServices;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	private MyDBAuthenticationServices myDBAuthenticationServices;

	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}

	@Bean
	public DaoAuthenticationProvider authenticationProvider() {
		DaoAuthenticationProvider authenticationProvider = new DaoAuthenticationProvider();
		authenticationProvider.setUserDetailsService(myDBAuthenticationServices);
		authenticationProvider.setPasswordEncoder(passwordEncoder());
		return authenticationProvider;
	}

	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		// auth.inMemoryAuthentication().withUser("abc@abc").password("123123").roles("1");

		auth.userDetailsService(myDBAuthenticationServices);
		auth.authenticationProvider(authenticationProvider());

	}

	@Override
	public void configure(HttpSecurity http) throws Exception {
		http.csrf().disable();

		// Trang khÃ´ng yÃªu cáº§u login
		http.authorizeRequests().antMatchers("/", "/login", "/register", "/logout").permitAll();

		// Trang user-info, chuyá»ƒn vá»� login náº¿u chÆ°a
		// Ä‘Äƒng nháº­p
		http.authorizeRequests().antMatchers("/category*", "/courses*", "/topic*", "/trainingStaff/*").access("hasAnyRole('ROLE_2')");

		http.authorizeRequests().antMatchers("/admin/trainingStaffManager*", "/admin/trainerManager*")
				.access("hasAnyRole('ROLE_1')");
		http.authorizeRequests().antMatchers("/trainee/*").access("hasAnyRole('ROLE_4')");

		http.authorizeRequests().antMatchers("/trainer/*")
		.access("hasAnyRole('ROLE_3')");

		http.authorizeRequests().antMatchers("/user/resetPassword*", "/user/savePassword*", "/updatePassword*")
				.hasAuthority("CHANGE_PASSWORD_PRIVILEGE");
		// Ngoáº¡i lá»‡ khi truy cáº­p sai permision
		http.authorizeRequests().and().exceptionHandling().accessDeniedPage("/403");

		http.authorizeRequests().and().formLogin().loginProcessingUrl("/j_spring_security_check").loginPage("/login")
				.defaultSuccessUrl("/loginSuccess").failureUrl("/login?error=true").usernameParameter("email")
				.passwordParameter("password").and().logout().logoutUrl("/logout").logoutSuccessUrl("/login");
	}

}
