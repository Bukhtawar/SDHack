package facebook4j.examples.signin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import facebook4j.Facebook;
import facebook4j.FacebookException;
import facebook4j.FacebookFactory;
import facebook4j.Friendlist;
import facebook4j.ResponseList;
import facebook4j.auth.AccessToken;

public class SignInServlet extends HttpServlet {
    private static final long serialVersionUID = -7453606094644144082L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Facebook facebook = new FacebookFactory().getInstance();
        request.getSession().setAttribute("facebook", facebook);
        facebook.setOAuthAppId("881525751896724", "afaed2830bae15efd4a1a92591625579"); 
        facebook.setOAuthPermissions("email,user_friends"); 
       facebook.setOAuthAccessToken(new AccessToken("CAACEdEose0cBAJHJevpRBnCvKqPGTSaWoJg7HCtyKbm52XlFA4ZC9UAp3CFJqFseaPpaj02mrJwgZC16z07w1Y1gbV4CLZAFpMZCPdiSqcZBXWbGUaYHweYaa8WKtzVHZBeInZCqKQx64XTAm1kkNFmaGYeHHkZBtbA3BRj8DtVykKcTezbWPIwNHxCxB5qArcKE2AsVhn6Ogp5yEeZCLEhbGoVCOFyDOsYAZD", null));
       /*try {
		ResponseList<Friendlist>responseFriends= facebook.getFriendlists();
		System.out.println("Friends count= "+responseFriends.size());
	} catch (FacebookException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} */
       StringBuffer callbackURL = request.getRequestURL();
        int index = callbackURL.lastIndexOf("/");
        callbackURL.replace(index, callbackURL.length(), "").append("/callback");
        response.sendRedirect(facebook.getOAuthAuthorizationURL(callbackURL.toString()));
    }
}
