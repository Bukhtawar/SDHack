package facebook4j.examples.signin;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.snapdeal.base.exception.SnapdealWSException;
import com.snapdeal.reviews.client.api.ReviewClientService;
import com.snapdeal.reviews.client.factory.ReviewClientFactory;
import com.snapdeal.reviews.client.factory.ReviewClientFactory.ConfigurationParams;
import com.snapdeal.reviews.commons.OpinionBo;
import com.snapdeal.reviews.commons.UserReviewsInfo;
import com.snapdeal.reviews.commons.dto.ReviewRequest;
import com.snapdeal.reviews.commons.dto.wrapper.CreateReviewRequest;
import com.snapdeal.reviews.commons.dto.wrapper.CreateReviewResponse;

import facebook4j.Facebook;
import facebook4j.FacebookException;

public class CreateReviewServlet  extends HttpServlet {
	
	static{
		initReviewClient();
	}
	
	public static void initReviewClient(){
		Map<ConfigurationParams, String> configParams =  new HashMap<ReviewClientFactory.ConfigurationParams, String>();
		configParams.put(ConfigurationParams.BASE_URL, "http://10.1.23.137:8080/reviews-api");
		ReviewClientFactory.init(configParams);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		initReviewClient();
		ReviewClientService client = ReviewClientFactory.getClient();
		
		CreateReviewRequest createReviewRequest = new CreateReviewRequest();
		ReviewRequest reviewRequest = new ReviewRequest();
		OpinionBo recommendation = OpinionBo.valueOf(request.getParameter("recommend"));
		reviewRequest.setComments(request.getParameter("experience_value"));
		reviewRequest.setHeadline(request.getParameter("headline_value"));
		reviewRequest.setProductId((String)request.getSession().getAttribute("productId"));
		reviewRequest.setRating(Integer.parseInt(request.getParameter("reviewrating")));
		reviewRequest.setRecommended(recommendation);
		Facebook fb = (Facebook)request.getSession().getAttribute("facebook");
		try {
			reviewRequest.setUserReviewsInfo(new UserReviewsInfo(fb.getId(), request.getParameter("nickname_value"), Boolean.TRUE, 0));
		} catch (IllegalStateException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (FacebookException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		createReviewRequest.setReviewRequest(reviewRequest);
		
		try {
			CreateReviewResponse reviewResponse = client.createReview(createReviewRequest);
			String reviewId = reviewResponse.getReviewResponse().getId();
			System.out.println(reviewId);
			request.getSession().setAttribute("createreviewresponse", "success");
		} catch (SnapdealWSException e) {
			request.getSession().setAttribute("createreviewresponse", "failed");
			e.printStackTrace();
		}
		response.sendRedirect("product?pid="+request.getParameter("pid"));
	}
}
