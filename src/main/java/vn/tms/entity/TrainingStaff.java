package vn.tms.entity;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;



@Entity
public class TrainingStaff extends Account implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

//	@OneToMany(mappedBy="trainingStaff", fetch = FetchType.LAZY, cascade = CascadeType.REMOVE)
	private Set<Category> listCategory = new HashSet<>();
	
//	@OneToMany(mappedBy="trainingStaff", fetch = FetchType.LAZY, cascade = CascadeType.REMOVE)
	private Set<Courses> listCourses = new HashSet<>();
	
//	@OneToMany(mappedBy="trainingStaff", fetch = FetchType.LAZY, cascade = CascadeType.REMOVE)
	private Set<Topic> listTopic = new HashSet<>();

	public TrainingStaff(String name, String password, int role) {
		super(name, password, role);
	}

	public Set<Category> getListCategory() {
		return listCategory;
	}

	public void setListCategory(Set<Category> listCategory) {
		this.listCategory = listCategory;
	}

	public Set<Courses> getListCourses() {
		return listCourses;
	}

	public void setListCourses(Set<Courses> listCourses) {
		this.listCourses = listCourses;
	}

	public Set<Topic> getListTopic() {
		return listTopic;
	}

	public void setListTopic(Set<Topic> listTopic) {
		this.listTopic = listTopic;
	}

}
