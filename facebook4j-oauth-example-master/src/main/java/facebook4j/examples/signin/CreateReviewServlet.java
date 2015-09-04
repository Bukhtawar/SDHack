package facebook4j.examples.signin;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.snapdeal.reviews.client.factory.ReviewClientFactory;
import com.snapdeal.reviews.client.factory.ReviewClientFactory.ConfigurationParams;

public class CreateReviewServlet  extends HttpServlet {
	
	static{
		initReviewClient();
	}
	
	public static void initReviewClient(){
		Map<ConfigurationParams, String> configParams =  new HashMap<ReviewClientFactory.ConfigurationParams, String>();
		configParams.put(ConfigurationParams.BASE_URL, "http://10.1.28.14:8080/");
		ReviewClientFactory.init(configParams);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String headline = request.getParameter("headline");
		
	}
}
