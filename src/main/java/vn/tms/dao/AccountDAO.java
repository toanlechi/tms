package vn.tms.dao;

import org.springframework.data.repository.CrudRepository;

import vn.tms.entity.Account;

public interface AccountDAO extends CrudRepository<Account, Integer> {

}
