package vn.tms.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.MappedSuperclass;
import javax.persistence.Table;

@MappedSuperclass
@Table(name="Account")
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
public abstract class Account implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	protected int id;

	@Column(name = "name")
	protected String name;

	@Column(name = "email")
	protected String email;

	@Column(name = "password")
	protected String password;

	@Column(name = "role")
	protected int role;

	public Account(String name, String password, int role) {
		super();
		this.name = name;
		this.password = password;
		this.role = role;
	}
	
	public Account(String email, String password) {
		super();
		this.email = email;
		this.password = password;
	}



	public Account() {

	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getRole() {
		return role;
	}

	public void setRole(int role) {
		this.role = role;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	
}
