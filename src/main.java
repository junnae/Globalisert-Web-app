

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class main
 */
@WebServlet("/main")
public class main extends HttpServlet {
	private static final long serialVersionUID = 1L;
     int white = 0;
     int blue = 0;
     int whiteprice = 0;
     int blueprice = 0;
     int totsum = 0;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public main() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	    String name = request.getParameter("name");
	    if(name.equals("form1")){
	    	white++;
	    	response.sendRedirect("/GlobalisertWebApp/products.jsp");     


	    }
	    else if(name.equals("form2")){
	    	blue++;
	    	response.sendRedirect("/GlobalisertWebApp/products.jsp");
   


	    }
	    
	    else if (name.equals("form3")){
	    	whiteprice = 52*white;
	    	blueprice = 38*blue;
	    	totsum = whiteprice + blueprice;
	    	
	    	request.setAttribute("white", white);
	    	request.setAttribute("whiteprice", whiteprice);
	    	request.setAttribute("blue", blue);
	    	request.setAttribute("blueprice", blueprice);
	    	request.setAttribute("totsum", totsum);
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/cart.jsp");
            dispatcher.forward(request, response);     
	    }

	}

}
