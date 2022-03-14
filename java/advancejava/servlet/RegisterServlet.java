package advancejava.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.dao.*;
import com.java.entities.User;
import com.java.helper.ConnectionProvider;


/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
@MultipartConfig
public class RegisterServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name=request.getParameter("user_name");
		String email=request.getParameter("user_email");
		String password=request.getParameter("user_password");
		String gender=request.getParameter("gender");
		String about=request.getParameter("about");
		String check=request.getParameter("check");
		User user=new User(name,email,password,gender,about);
		UserDao dao=new UserDao(ConnectionProvider.getConnection());
		boolean f=dao.saveUser(user);
		if(f)
		{
			System.out.println("done");
		}
		else
		{
			System.out.println("error");
		}
		
	}
}
