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
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Topic implements Serializable {

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

	@ManyToOne(fetch = FetchType.EAGER)
	private Courses courses;

	@ManyToOne(fetch = FetchType.EAGER)
	private TrainingStaff trainingStaff;

	@ManyToOne(fetch = FetchType.EAGER)
	private Trainer trainer;

	@OneToMany(mappedBy = "topic", fetch = FetchType.EAGER, cascade = CascadeType.REMOVE)
	private Set<ReviewTopic> listReviewTopic;

	public Topic() {
	}

	public Topic(String name, String description, Date createdAt, Courses courses, TrainingStaff trainingStaff,
			Trainer trainer, Set<ReviewTopic> listReviewTopic) {
		super();
		this.name = name;
		this.description = description;
		this.createdAt = createdAt;
		this.courses = courses;
		this.trainingStaff = trainingStaff;
		this.trainer = trainer;
		this.listReviewTopic = listReviewTopic;
	}

	public Topic(String name, String description, Date createdAt, Courses courses, TrainingStaff trainingStaff) {
		super();
		this.name = name;
		this.description = description;
		this.createdAt = createdAt;
		this.courses = courses;
		this.trainingStaff = trainingStaff;
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

	public Courses getCourses() {
		return courses;
	}

	public void setCourses(Courses courses) {
		this.courses = courses;
	}

	public TrainingStaff getTrainingStaff() {
		return trainingStaff;
	}

	public void setTrainingStaff(TrainingStaff trainingStaff) {
		this.trainingStaff = trainingStaff;
	}

	public Trainer getTrainer() {
		return trainer;
	}

	public void setTrainer(Trainer trainer) {
		this.trainer = trainer;
	}

	public Set<ReviewTopic> getListReviewTopic() {
		return listReviewTopic;
	}

	public void setListReviewTopic(Set<ReviewTopic> listReviewTopic) {
		this.listReviewTopic = listReviewTopic;
	}

}
