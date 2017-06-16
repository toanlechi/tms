package vn.tms.services;

import vn.tms.entity.Account;

public interface AccountServices {
	Account findByEmail(String email);

}
