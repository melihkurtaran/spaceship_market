package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class mySessionServlet
 */
@WebServlet("/mySessionServlet")
public class mySessionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public mySessionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
 		
		int id = Integer.parseInt(request.getParameter("id"));
		String name= request.getParameter("name");
		int price = Integer.parseInt(request.getParameter("price"));
		Item i = new Item();
		i.setName(name);
		i.setID(id);
		i.setPrice(price);
		
		session.setAttribute("newSession", i);
		
		out.println("<html><body bgcolour='blue'><p> Hello Mr.");
		
		out.println( ((Item) session.getAttribute("newSession")).getID() );
		out.print("<br>");
		out.println( ((Item) session.getAttribute("newSession")).getName() );
		out.print("<br>");
		out.println( ((Item) session.getAttribute("newSession")).getPrice() );
		out.println("</p></body></html>");
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
