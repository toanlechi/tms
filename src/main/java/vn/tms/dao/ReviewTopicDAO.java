package vn.tms.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import vn.tms.entity.ReviewTopic;

public interface ReviewTopicDAO extends CrudRepository<ReviewTopic, Integer>{
	ReviewTopic findByTopic_idAndTrainee_id(int topic, int trainee);
	
	List<ReviewTopic> findByTopic_id(int topic);
}
