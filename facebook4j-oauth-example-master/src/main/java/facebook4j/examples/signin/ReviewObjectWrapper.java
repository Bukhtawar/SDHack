package facebook4j.examples.signin;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.snapdeal.reviews.commons.dto.Review;

import facebook4j.Facebook;
import facebook4j.FacebookException;

public class ReviewObjectWrapper {

	private Review review;

	private String facebookId;

	private String dpUrl;

	public Review getReview() {
		return review;
	}

	public void setReview(Review review) {
		this.review = review;
	}

	public String getFacebookId() {
		return facebookId;
	}

	public void setFacebookId(String facebookId) {
		this.facebookId = facebookId;
	}

	public String getDpUrl() {
		return dpUrl;
	}

	public void setDpUrl(String dpUrl) {
		this.dpUrl = dpUrl;
	}

	public static List<ReviewObjectWrapper> getReviewObjectWrapper(Map<String, Review> reviewPerUser,
			final Facebook facebook) {
		final List<ReviewObjectWrapper> reviewsWrapperList = new ArrayList<ReviewObjectWrapper>();
		for (final String facebookId : reviewPerUser.keySet()) {
			try {
				final String url = facebook.getPictureURL(160, 160).toString();
				final ReviewObjectWrapper reviewObjectWrapper = new ReviewObjectWrapper();
				reviewObjectWrapper.setDpUrl(url);
				reviewObjectWrapper.setReview(reviewPerUser.get(facebookId));
				reviewObjectWrapper.setFacebookId(facebookId);
				reviewsWrapperList.add(reviewObjectWrapper);
			} catch (FacebookException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return reviewsWrapperList;
	}

}
