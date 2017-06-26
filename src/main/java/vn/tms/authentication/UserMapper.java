package vn.tms.authentication;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import vn.tms.entity.Account;
import vn.tms.entity.Trainee;

public class UserMapper implements RowMapper<Account> {

	@Override
	public Account mapRow(ResultSet rs, int rowNum) throws SQLException {
		String email = rs.getString("email");
		String password = rs.getString("password");
		return new Trainee(email, password);
	}

}
