package com.java.dao;
import java.sql.*;

import com.java.entities.User;
public class UserDao {
	public Connection con;

	public UserDao(Connection con) {
		super();
		// TODO Auto-generated constructor stub
		this.con=con;
	}
	public boolean saveUser(User user)
	{
		boolean f=false;
			try {
				String qry="insert into user(name,email,password,gender,about) values(?,?,?,?,?)";
				PreparedStatement pstmt=con.prepareStatement(qry);
				pstmt.setString(1,user.getName());
				pstmt.setString(2,user.getEmail());
				pstmt.setString(3,user.getPassword());
				pstmt.setString(4,user.getGender());
				pstmt.setString(5,user.getAbout());
				pstmt.executeUpdate();
				f=true;
			} catch (Exception e) {
				// TODO: handle exception
				e.getStackTrace();
			}
			return f;
	}
	
	public User getUserByEmail(String email,String password)
	{
		User user=null;
		try {
			String qry="select * from user where email=? and password=?";
			PreparedStatement pstmt=con.prepareStatement(qry);
			pstmt.setString(1, email);
			pstmt.setString(2, password);
			ResultSet set=pstmt.executeQuery();
			if(set.next())
			{
				user=new User();
				String name=set.getString("name");
				user.setId(set.getInt("id"));
				user.setEmail(set.getString("email"));
				user.setAbout(set.getString("about"));
				user.setGender(set.getString("gender"));
				user.setDateTime(set.getTimestamp("rdate"));
				user.setGender(set.getString("gender"));
				user.setProfile(set.getString("profile"));
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return user;	
	}
	
}
