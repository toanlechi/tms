package vn.tms.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;



@Entity
public class Courses implements Serializable{

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
	private Category category;
	
	@ManyToOne(fetch = FetchType.LAZY)
	private TrainingStaff trainingStaff;
	
	@ManyToMany(fetch = FetchType.LAZY, mappedBy = "listCourses")
	private Set<Trainee> listTrainee;
	
//	@OneToMany(mappedBy="courses", fetch = FetchType.LAZY, cascade = CascadeType.REMOVE)
	private Set<ReviewCourses> listReviewCourses;
	
//	@OneToMany(mappedBy="courses", fetch = FetchType.LAZY, cascade = CascadeType.REMOVE)
	private Set<Topic> listTopic;
	
	public Courses(String name, String description, Date createdAt, Category category, TrainingStaff trainingStaff,
			Set<Trainee> listTrainee, Set<ReviewCourses> listReviewCourses, Set<Topic> listTopic) {
		super();
		this.name = name;
		this.description = description;
		this.createdAt = createdAt;
		this.category = category;
		this.trainingStaff = trainingStaff;
		this.listTrainee = listTrainee;
		this.listReviewCourses = listReviewCourses;
		this.listTopic = listTopic;
	}
	public Courses() {
		super();
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
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public TrainingStaff getTrainingStaff() {
		return trainingStaff;
	}
	public void setTrainingStaff(TrainingStaff trainingStaff) {
		this.trainingStaff = trainingStaff;
	}
	public Set<Trainee> getListTrainee() {
		return listTrainee;
	}
	public void setListTrainee(Set<Trainee> listTrainee) {
		this.listTrainee = listTrainee;
	}
	public Set<ReviewCourses> getListReviewCourses() {
		return listReviewCourses;
	}
	public void setListReviewCourses(Set<ReviewCourses> listReviewCourses) {
		this.listReviewCourses = listReviewCourses;
	}
	public Set<Topic> getListTopic() {
		return listTopic;
	}
	public void setListTopic(Set<Topic> listTopic) {
		this.listTopic = listTopic;
	}
	
	
	
	
	

}
