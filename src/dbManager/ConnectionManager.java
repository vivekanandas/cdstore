package dbManager;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class ConnectionManager {
	
	static Connection con;
    static String url;
          
    public static Connection getConnection()
    {
      
       try
       {
          String url = "jdbc:mysql://localhost:3306/cdstore"; 

          Class.forName("com.mysql.jdbc.Driver");
          
          try
          {            	
        	  System.out.println("Before 222bbbbbbbbbbbbbbbbbbbn\n\n");
        	  con = DriverManager.getConnection(url,"root","abc123");
        	  System.out.println("After dbbbbbbbbbbbbbbbbbbbbbbbbbbbbbn\n\n");
               
          }
          
          catch (SQLException ex)
          {
        	  System.out.println("Catch dbbbbbbbbbbbbbbbbbbbbbbbbbbbbbn\n\n");
             ex.printStackTrace();
          }
       }

       catch(ClassNotFoundException e)
       {
          System.out.println(e);
       }

    return con;
}

}
