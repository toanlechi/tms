package vn.tms.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Category implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;

	@Column(name = "name")
	private String name;

	@Column(name = "description")
	private String description;

	@Column(name = "createdAt")
	private Date createdAt;

	@ManyToOne(fetch = FetchType.LAZY)
	private TrainingStaff trainingStaff;

	@OneToMany(mappedBy = "category", fetch = FetchType.LAZY, cascade = CascadeType.REMOVE)
	private Set<Courses> listCourses = new HashSet<>();

	public Category() {
		super();
	}

	public Category(String name, String description, Date createdAt, TrainingStaff trainingStaff,
			Set<Courses> listCourses) {
		super();
		this.name = name;
		this.description = description;
		this.createdAt = createdAt;
		this.trainingStaff = trainingStaff;
		this.listCourses = listCourses;
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

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public TrainingStaff getTrainingStaff() {
		return trainingStaff;
	}

	public void setTrainingStaff(TrainingStaff trainingStaff) {
		this.trainingStaff = trainingStaff;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public Set<Courses> getListCourses() {
		return listCourses;
	}

	public void setListCourses(Set<Courses> listCourses) {
		this.listCourses = listCourses;
	}

}
