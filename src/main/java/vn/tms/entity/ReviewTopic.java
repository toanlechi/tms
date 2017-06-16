package vn.tms.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class ReviewTopic implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;

	@ManyToOne(fetch = FetchType.LAZY)
	private Topic topic;

	@ManyToOne(fetch = FetchType.LAZY)
	private Trainee trainee;

	@Column(name = "review")
	private String review;

	@Column(name = "star")
	private int star;

	public ReviewTopic() {
		super();
	}

	public ReviewTopic(Topic topic, Trainee trainee, String review, int star) {
		super();
		this.topic = topic;
		this.trainee = trainee;
		this.review = review;
		this.star = star;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Topic getTopic() {
		return topic;
	}

	public void setTopic(Topic topic) {
		this.topic = topic;
	}

	public Trainee getTrainee() {
		return trainee;
	}

	public void setTrainee(Trainee trainee) {
		this.trainee = trainee;
	}

	public String getReview() {
		return review;
	}

	public void setReview(String review) {
		this.review = review;
	}

	public int getStar() {
		return star;
	}

	public void setStar(int star) {
		this.star = star;
	}

}
