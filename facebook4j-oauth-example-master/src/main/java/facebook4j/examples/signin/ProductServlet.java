package facebook4j.examples.signin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.snapdeal.base.exception.SnapdealWSException;
import com.snapdeal.reviews.client.api.UserClientService;
import com.snapdeal.reviews.client.factory.ReviewClientFactory;
import com.snapdeal.reviews.commons.dto.Review;
import com.snapdeal.reviews.commons.dto.ReviewPerUserResponse;

import facebook4j.Facebook;
import facebook4j.FacebookException;
import facebook4j.Friend;
import facebook4j.Reading;
import facebook4j.ResponseList;
import facebook4j.examples.dto.Product;

public class ProductServlet extends HttpServlet{

	public static Map<String, Product> productMap = new HashMap<String, Product>();
	
	static{
		fillProductMap();
		CreateReviewServlet.initReviewClient();
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String pid = request.getParameter("pid");
		Facebook facebook = (Facebook) request.getSession().getAttribute("facebook");
		request.getSession().setAttribute("productId", pid);
		request.getSession().setAttribute("product", productMap.get(pid));
		
		ReviewClientFactory.getClient();
		if(facebook != null){
			request.getSession().setAttribute("dpUrl", getDisplayPictureURL(160, 160, facebook));
		}
		
		UserClientService client = ReviewClientFactory.getUserClient();
		Map<String, String> params = new HashMap<String, String>();
		params.put("productId", pid);
		
		ResponseList<Friend> responseFriends;
		ReviewPerUserResponse reviews = null;
		//List<Review> rs = null;
		try {
			if(facebook != null){
				responseFriends = facebook.getFriends(new Reading().fields("id,name"));
				String friendsStr = getFriendIds(responseFriends);
				params.put("users", friendsStr+","+facebook.getId());
				System.out.println("friends "+ friendsStr);
				reviews = client.getReviewPerUserForPogId(params);
				Map<String, Review> reviewPerUser = reviews.getReviewPerUser();

				//List<Review> rs = new ArrayList<Review>(reviewPerUser.values());
				List<ReviewObjectWrapper> rs = ReviewObjectWrapper.getReviewObjectWrapper(reviewPerUser, facebook);
				request.getSession().setAttribute("rs", rs);
				
				
			}
		} catch (FacebookException e) {
			e.printStackTrace();
		} catch (SnapdealWSException e) {
			e.printStackTrace();
		}
		System.out.println("Setting attribute");
		//request.getSession().setAttribute("rs", rs);
		request.getRequestDispatcher("product.jsp").forward(request, response);
	}
	
	private String getFriendIds(ResponseList<Friend> friends){
		String str = "";
		for(Friend friend: friends){
			if(str.length() == 0){
				str += friend.getId();
			}else{
				str += "," + friend.getId();
			}
		}
		return str;
	}
	
	private static void fillProductMap(){
		if(productMap.size() > 0){
			return;
		}
		Product p1 = new Product("1", "Nexus 5 16 GB", "http://n4.sdlcdn.com/imgs/a/v/c/LG-Google-Nexus-16-GB-SDL718884263-1-59915.jpg" , "20,999");
		productMap.put(p1.getId(), p1);
		
		Product p2 = new Product("2", "I Phone 6 16 GB", "http://n3.sdlcdn.com/imgs/a/0/b/Apple-iPhone-6-16-GB-SDL691711090-1-6d93d.jpg" , "41,697");
		productMap.put(p2.getId(), p2);
		
		Product p3 = new Product("3", "Canon EOS 6D with 24-105mm Lens", "http://n3.sdlcdn.com/imgs/a/i/q/Canon-EOS-6D-DSLR-24-1767357-1-1b0fd.jpg" , "1,34,473");
		productMap.put(p3.getId(), p3);
		
	}
	
	private String getDisplayPictureURL(int width, int height, final Facebook facebook) {
		String url = null;
		try {
			url = facebook.getPictureURL(width,height).toString();
		} catch (FacebookException e) {
			e.printStackTrace();
		}
		return url;
	}
}
