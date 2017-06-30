package vn.tms.authentication;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import vn.tms.entity.User;

public class UserMapper implements RowMapper<User> {

	@Override
	public User mapRow(ResultSet rs, int rowNum) throws SQLException {
		String email = rs.getString("email");
		String password = rs.getString("password");
		return new User(email, password);
	}

}
