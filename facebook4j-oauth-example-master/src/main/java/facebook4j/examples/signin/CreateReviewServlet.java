package facebook4j.examples.signin;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.snapdeal.base.audit.annotation.AuditableClass;
import com.snapdeal.base.exception.SnapdealWSException;
import com.snapdeal.reviews.client.api.ReviewClientService;
import com.snapdeal.reviews.client.factory.ReviewClientFactory;
import com.snapdeal.reviews.client.factory.ReviewClientFactory.ConfigurationParams;
import com.snapdeal.reviews.commons.OpinionBo;
import com.snapdeal.reviews.commons.UserReviewsInfo;
import com.snapdeal.reviews.commons.dto.ReviewRequest;
import com.snapdeal.reviews.commons.dto.wrapper.CreateReviewRequest;

public class CreateReviewServlet  extends HttpServlet {
	
	static{
		initReviewClient();
	}
	
	public static void initReviewClient(){
		Map<ConfigurationParams, String> configParams =  new HashMap<ReviewClientFactory.ConfigurationParams, String>();
		configParams.put(ConfigurationParams.BASE_URL, "http://169.254.7.82:8080/reviews-api");
		ReviewClientFactory.init(configParams);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		Map<ConfigurationParams, String> configParams = new HashMap<ConfigurationParams, String>();
		configParams.put(ConfigurationParams.BASE_URL, "http://10.1.28.14:8080/reviews-api");
		ReviewClientFactory.init(configParams);
		ReviewClientService client = ReviewClientFactory.getClient();
		
		String headline = request.getParameter("headline");
		CreateReviewRequest createReviewRequest = new CreateReviewRequest();
		ReviewRequest reviewRequest = new ReviewRequest();
		reviewRequest.setComments("");
		reviewRequest.setHeadline("");
		reviewRequest.setProductId("");
		reviewRequest.setRating(3);
		reviewRequest.setRecommended(OpinionBo.YES);
		reviewRequest.setUserReviewsInfo(new UserReviewsInfo("user", "nickname", Boolean.TRUE, 0));
		createReviewRequest.setReviewRequest(reviewRequest);
		
		try {
			client.createReview(createReviewRequest);
		} catch (SnapdealWSException e) {
			e.printStackTrace();
		}
	}
}
