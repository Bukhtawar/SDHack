package facebook4j.examples.signin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import facebook4j.BatchRequest;
import facebook4j.BatchRequests;
import facebook4j.BatchResponse;
import facebook4j.Facebook;
import facebook4j.FacebookException;
import facebook4j.Friend;
import facebook4j.Reading;
import facebook4j.ResponseList;
import facebook4j.User;
import facebook4j.internal.http.RequestMethod;
import facebook4j.internal.org.json.JSONObject;
import facebook4j.json.DataObjectFactory;

public class PostServlet extends HttpServlet {
    private static final long serialVersionUID = 4179545353414298791L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String message = request.getParameter("message");
        Facebook facebook = (Facebook) request.getSession().getAttribute("facebook");
        meth(facebook);
        final String displayPictureURL = getDisplayPictureURL(160,160,facebook);
        System.out.println(displayPictureURL);
    }
    
    private void method2(Facebook facebook,HttpServletRequest request, HttpServletResponse response) throws IOException{
    	BatchRequests<BatchRequest> batch = new BatchRequests<BatchRequest>();
        batch.add(new BatchRequest(RequestMethod.GET, "me"));
        batch.add(new BatchRequest(RequestMethod.GET, "/v2.0/me/taggable_friends?limit=2000&field=id"));
        List<BatchResponse> results;
		try {
			results = facebook.executeBatch(batch);
		

        BatchResponse result1 = results.get(0);
        BatchResponse result2 = results.get(1);

        // You can get http status code or headers
        int statusCode1 = result1.getStatusCode();
        String contentType = result1.getResponseHeader("Content-Type");

        // You can get body content via as****() method
        String jsonString = result1.asString();
        JSONObject jsonObject = result1.asJSONObject();
        ResponseList<JSONObject> responseList = result2.asResponseList();

        // You can map json to java object using DataObjectFactory#create****()
        User user = DataObjectFactory.createUser(jsonString);
        Friend friend1 = DataObjectFactory.createFriend(responseList.get(0).toString());
        Friend friend2 = DataObjectFactory.createFriend(responseList.get(1).toString());
        response.sendRedirect(request.getContextPath()+ "/");
		} catch (FacebookException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
    
    private void meth(Facebook facebook) {
    	try {
    		ResponseList<Friend>responseFriends= facebook.getFriends(
    				new Reading().fields("id,name"));
    		System.out.println("Friends count= "+responseFriends.size());
    	} catch (FacebookException e) {
    		// TODO Auto-generated catch block
    		e.printStackTrace();
    	} 
	}
    
    private String getDisplayPictureURL(int width, int height, final Facebook facebook) {
		String url = null;
		try {
			url = facebook.getPictureURL(width, height).toString();
		} catch (FacebookException e) {
			e.printStackTrace();
		}
		return url;
	}
    
}
