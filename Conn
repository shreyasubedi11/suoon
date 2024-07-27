package HotelMangementSystem; // Correct package name



import java.sql.*;

public class Conn {
    Connection c;
    Statement s;
    public Conn(){
        try{
       Class.forName("com.mysql.cj.jdbc.Driver");
       c = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelmanagementsystem" ,"root","pokhara123");
       s = c.createStatement();
    }
   catch (Exception e){
    e.printStackTrace();
} 
}

  public static void main(String[] args) {
        new Conn(); // Create an instance of Conn
        System.out.println("Connection established!"); // Optionally, print a confirmation message
    }
}
