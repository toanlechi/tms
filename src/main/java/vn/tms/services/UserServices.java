package vn.tms.services;

import java.util.List;

import vn.tms.entity.Account;

public interface UserServices {
	List<Account> getListByRole(String role);

	boolean insert(Account user);

	boolean update(Account user);

	boolean delete(Account user);

	boolean isExists(String name);
}
