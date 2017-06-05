package vn.tms.entity;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;

@Entity
public class Trainer extends Account implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Column(name = "type")
	private int type;

	@Column(name = "education")
	private String education;

	@Column(name = "workingPlace")
	private String workingPlace;

	@Column(name = "phone")
	private int phone;

//	@OneToMany(mappedBy="trainer", fetch = FetchType.LAZY, cascade = CascadeType.REMOVE)
	private Set<Topic> listTopic = new HashSet<>();

	public Trainer(String name, String password, int role, int type, String education, String workingPlace, int phone) {
		super(name, password, role);
		this.type = type;
		this.education = education;
		this.workingPlace = workingPlace;
		this.phone = phone;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public String getWorkingPlace() {
		return workingPlace;
	}

	public void setWorkingPlace(String workingPlace) {
		this.workingPlace = workingPlace;
	}

	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}

	public Set<Topic> getListTopic() {
		return listTopic;
	}

	public void setListTopic(Set<Topic> listTopic) {
		this.listTopic = listTopic;
	}

}
