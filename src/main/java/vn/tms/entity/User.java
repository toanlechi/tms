package vn.tms.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "Account")
public class User extends Account implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public User() {
		super();
	}
	
	public User(String email, String password){
		super(email, password);
	}

	

}
