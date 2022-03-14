package advancejava.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.dao.*;
import com.java.entities.User;
import com.java.helper.ConnectionProvider;
@WebServlet("/Login")
public class Login extends HttpServlet{
	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException
	{
		String mail=request.getParameter("email");
		String password=request.getParameter("password");
		UserDao dao=new UserDao(ConnectionProvider.getConnection());
		User u=dao.getUserByEmail(mail,password);
		if(u==null)
		{
			System.out.print("Please Login----");
		}
		else
		{
			HttpSession s=request.getSession();
			s.setAttribute("CurrentUser", u);
			response.sendRedirect("getProfile.jsp");
		}
	}

}
