package servlets;

import db.dbHandler;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet({"/dbTest"})
public class dbTest
  extends HttpServlet
{
  private static final long serialVersionUID = 1L;
  
  public dbTest() {}
  
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
  {
    dbHandler.Connect();
    dbHandler.Insert(request.getParameter("firstname"), request.getParameter("lastname"), request.getParameter("mail"), request.getParameter("planet"));
  }
  


  protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
  {
    doGet(request, response);
  }
}
