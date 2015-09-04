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

import facebook4j.Facebook;
import facebook4j.examples.dto.Product;

public class ProductServlet extends HttpServlet{

	public static Map<String, Product> productMap = new HashMap<String, Product>();
	
	static{
		fillProductMap();
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Facebook facebook = (Facebook) request.getSession().getAttribute("facebook");
		request.getSession().setAttribute("product", productMap.get(request.getParameter("pid")));
		request.getRequestDispatcher("product.jsp").forward(request, response);
		
		
		ReviewClientFactory.getClient();
		
	}
	
	private static void fillProductMap(){
		if(productMap.size() > 0){
			return;
		}
		Product p1 = new Product("Nexus 5 16 GB", "http://n4.sdlcdn.com/imgs/a/v/c/LG-Google-Nexus-16-GB-SDL718884263-1-59915.jpg" , "20,999");
		productMap.put("1", p1);
		
		Product p2 = new Product("I Phone 6 16 GB", "http://n3.sdlcdn.com/imgs/a/0/b/Apple-iPhone-6-16-GB-SDL691711090-1-6d93d.jpg" , "41,697");
		productMap.put("2", p2);
		
		Product p3 = new Product("Canon EOS 6D with 24-105mm Lens", "http://n3.sdlcdn.com/imgs/a/i/q/Canon-EOS-6D-DSLR-24-1767357-1-1b0fd.jpg" , "1,34,473");
		productMap.put("3", p3);
		
	}
}
