package vn.tms.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vn.tms.dao.ReviewTopicDAO;
import vn.tms.entity.ReviewTopic;
import vn.tms.services.ReviewTopicServices;

@Service
public class ReviewTopicServicesImpl implements ReviewTopicServices{
	@Autowired
	ReviewTopicDAO reviewTopicDAO;

	@Override
	public void update(ReviewTopic reviewTopic) {
		reviewTopicDAO.save(reviewTopic);
	}

	@Override
	public void create(ReviewTopic reviewTopic) {
		reviewTopicDAO.save(reviewTopic);
	}

	@Override
	public ReviewTopic findReviewByTopicAndTrainee(int topic, int trainee) {
		return reviewTopicDAO.findByTopic_idAndTrainee_id(topic, trainee);
	}

}
