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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

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

	@Column(name = "description", columnDefinition="TEXT")
	private String description;
	
	@Column(name="timeStart")
	@Temporal(TemporalType.TIME)
	private Date timeStart;
	
	@Column(name= "timeEnd")
	@Temporal(TemporalType.TIME)
	private Date timeEnd;
	
	@Column(name="day")
	private int day;

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

	

	public Topic(String name, String description, Date timeStart, Date timeEnd, int day, Date createdAt,
			Courses courses, TrainingStaff trainingStaff, Trainer trainer) {
		super();
		this.name = name;
		this.description = description;
		this.timeStart = timeStart;
		this.timeEnd = timeEnd;
		this.day = day;
		this.createdAt = createdAt;
		this.courses = courses;
		this.trainingStaff = trainingStaff;
		this.trainer = trainer;
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

	public Date getTimeStart() {
		return timeStart;
	}

	public void setTimeStart(Date timeStart) {
		this.timeStart = timeStart;
	}

	public Date getTimeEnd() {
		return timeEnd;
	}

	public void setTimeEnd(Date timeEnd) {
		this.timeEnd = timeEnd;
	}

	public int getDay() {
		return day;
	}

	public void setDay(int day) {
		this.day = day;
	}
	
	@Transient
	public String mo, tu, we, th, fr, sa, su;

	public String getMo() {
		return mo;
	}



	public void setMo(String mo) {
		this.mo = mo;
	}



	public String getTu() {
		return tu;
	}



	public void setTu(String tu) {
		this.tu = tu;
	}



	public String getWe() {
		return we;
	}



	public void setWe(String we) {
		this.we = we;
	}



	public String getTh() {
		return th;
	}



	public void setTh(String th) {
		this.th = th;
	}



	public String getFr() {
		return fr;
	}



	public void setFr(String fr) {
		this.fr = fr;
	}



	public String getSa() {
		return sa;
	}



	public void setSa(String sa) {
		this.sa = sa;
	}



	public String getSu() {
		return su;
	}



	public void setSu(String su) {
		this.su = su;
	}
	
	
	

}
