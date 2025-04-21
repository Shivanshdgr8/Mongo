import java.sql.*;

public class JDBC{
  public static void main(String[] args){
    try{
      Class.forName("com.mysql.cj.jdbc.Driver");  // Register    // 1
      System.out.println("11111)
      Connection con = DriverManager.getConnection(
        "jdbc:mysql: // localhost:3306 /friday" , "root","root");
      //here sonoo is database name, root is username and password     // 2
      System.out.println("22222");
      Statement stmt = con.createStatement();   // 3
      System.out.println("33333");  
      ResultSet rs = stmt.executeQuery("select * from student");  // 4
  
      while(rs.next())
      System.out.println(rs.getInt(1)+ " " + rs.getString + " " + rs.getString(3);
      }
      con.close();   //5
  
      }
    catch(Exception e){
      System.out.println("Shubham check your program, there is a small error");
    }
  }
}
