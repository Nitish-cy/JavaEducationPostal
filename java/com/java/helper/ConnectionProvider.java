package com.java.helper;
import java.sql.*;
public class ConnectionProvider {
private static Connection con;
public static Connection getConnection()
{
	try {
		
		if(con==null)
		{
			//drier load
			Class.forName("com.mysql.jdbc.Driver");
			//Create connection
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/teckblock","root","Mishra123@");

		}
		
	} catch (Exception e) {
		e.printStackTrace();
		// TODO: handle exception
	}
	return con;
}
}
