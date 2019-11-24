package db;

import java.sql.ResultSet;

public class dbHandler {
  public static java.sql.Connection con;
  public static java.sql.Statement st;
  public static ResultSet rs;
  
  public dbHandler() {}
  
  public static void main(String[] args) { Connect();
    Read();
  }
  

  public static void Connect()
  {
    try
    {
      Class.forName("com.mysql.jdbc.Driver");
      con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/bwt_db1?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=Europe/Moscow", "root", "Melih15963?");
      st = con.createStatement();
      System.out.println("Connection is successfull!");
    }
    catch (Exception e) {
      System.out.println("Connection error : " + e);
    }
  }
  

  public static void Read()
  {
    String query = "SELECT * FROM users";
    try
    {
      rs = st.executeQuery(query);
      
      while (rs.next())
      {
        System.out.println("User: " + rs.getString("firstname") + " " + rs.getString("lastname") + " " + rs.getString("mail") + " " + rs.getString("planet") );
      }
    }
    catch (Exception e)
    {
      System.out.println("Reading from data base error : " + e);
    }
  }
  
  public static void Insert(String firstname, String lastname,String mail, String planet)
  {
    String query = "INSERT INTO `users`(`ID`, `firstname`, `lastname`,`mail`, `planet`) VALUES (NULL,'" + firstname + "','" + lastname + "','" + mail + "','" + planet + "')";
    try {
      st.executeUpdate(query);
    }
    catch (Exception e) {
      System.out.println("Includeing in data base error : " + e);
    }
  }
  

  public static String ReadString()
  {
    String query = "SELECT * FROM users";
    String data = "";
    try {
      rs = st.executeQuery(query);
      
      while (rs.next())
      {
        data = data + "<b>Name:</b> " + rs.getString("firstname") + " <b>Surname:</b> " + rs.getString("lastname") + " <b>Mail:</b> " + rs.getString("mail") +" <b>Planet:</b> " + rs.getString("planet") +"<br/>";
      }
    }
    catch (Exception e)
    {
      System.out.println("Reading from data base error : " + e);
    }
    return data;
  }
}
