package controllers;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;


@WebServlet (urlPatterns="/initializeResources", loadOnStartup=1)
public class LoadOnInitServlet extends HttpServlet {



    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
   
	@Override
	public void init(ServletConfig arg0) throws ServletException {
		super.init(arg0);
		
		try {
			Class.forName("models.MediathequeData"); //A changer
		}
		catch(Exception e) {
		}
		
		System.out.println("******************************************************************");
	}

}
