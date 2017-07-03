package vn.tms.services;

import vn.tms.entity.ReviewTopic;

public interface ReviewTopicServices {
	void update(ReviewTopic reviewTopic);

	void create(ReviewTopic reviewTopic);

	ReviewTopic findReviewByTopicAndTrainee(int topic, int trainee);
}
