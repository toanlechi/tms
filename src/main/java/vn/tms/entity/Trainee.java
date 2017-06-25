package vn.tms.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "Account")
public class Trainee extends Account implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Column(name = "age")
	private int age;

	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	@Column(name = "birthday")
	private Date birthday;

	@Column(name = "education")
	private String education;

	@Column(name = "programmingLanguage")
	private String programmingLanguage;

	@Column(name = "toeicScore")
	private int toeicScore;

	@Column(name = "address")
	private String address;

	@ManyToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "trainee_courses", joinColumns = 
			@JoinColumn(name = "courses_id", referencedColumnName="id") , inverseJoinColumns = 
					@JoinColumn(name = "trainee_id",referencedColumnName="id") )
	private Set<Courses> listCourses = new HashSet<>();

	@OneToMany(mappedBy = "trainee", fetch = FetchType.EAGER, cascade = CascadeType.REMOVE)
	private Set<ReviewTopic> listReviewTopic = new HashSet<>();

	@OneToMany(mappedBy = "trainee", fetch = FetchType.EAGER, cascade = CascadeType.REMOVE)
	private Set<ReviewCourses> listReviewCourses = new HashSet<>();

	public Trainee(String name, String password, int role, int age, Date birthday, String education,
			String programmingLanguage, int toeicScore, String address) {
		super(name, password, role);
		this.age = age;
		this.birthday = birthday;
		this.education = education;
		this.programmingLanguage = programmingLanguage;
		this.toeicScore = toeicScore;
		this.address = address;
	}

	public Trainee() {

	}
	

	public Trainee(String name, String password) {
		super(name, password);
	}
	
	public Trainee(String name, String password, int role) {
		super(name, password, role);
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public String getProgrammingLanguage() {
		return programmingLanguage;
	}

	public void setProgrammingLanguage(String programmingLanguage) {
		this.programmingLanguage = programmingLanguage;
	}

	public int getToeicScore() {
		return toeicScore;
	}

	public void setToeicScore(int toeicScore) {
		this.toeicScore = toeicScore;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Set<Courses> getListCourses() {
		return listCourses;
	}

	public void setListCourses(Set<Courses> listCourses) {
		this.listCourses = listCourses;
	}

	public Set<ReviewTopic> getListReviewTopic() {
		return listReviewTopic;
	}

	public void setListReviewTopic(Set<ReviewTopic> listReviewTopic) {
		this.listReviewTopic = listReviewTopic;
	}

	public Set<ReviewCourses> getListReviewCourses() {
		return listReviewCourses;
	}

	public void setListReviewCourses(Set<ReviewCourses> listReviewCourses) {
		this.listReviewCourses = listReviewCourses;
	}

}
