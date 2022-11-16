package Servlet1;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/welcome")
public class Welcome extends HttpServlet {

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException
	{
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();
		

		String ans = req.getParameter("Answer");
		ServletContext con = getServletContext();
		String answer=(String) con.getAttribute("Ans");

		Cookie ck[]= req.getCookies();
	
		boolean f = false;
		String name="";
		if(ck==null)
		{
			out.println("You are new user");
			req.getRequestDispatcher("LoginServlet1.jsp").include(req, res);
		}
		else
		{
			for(Cookie c : ck)
			{
				String tname = c.getName();
				if(tname.equals("username"))
				{
					f = true;
					name= c.getValue();
				}
			}
		}
		if(f)
		{
			if(ans.equals(answer))
			{
			//HttpSession
			HttpSession session = req.getSession(false);
			String n = (String) session.getAttribute("lastname");
			
			out.print("<br>Your last name : "+n);
			
			//Cookie
			out.print("<br>Your cookie : "+ name);
			out.print("<h3>Hello "+name+"....</h3>");
			
			int t =(int) con.getAttribute("totaluser");
			int c = (int) con.getAttribute("currentuser");
			
			out.print("Total users = "+t);
			out.print(" Current user = "+c);
			
			req.getRequestDispatcher("Welcome.jsp").include(req, res);

			//res.sendRedirect("Welcome.jsp");
			
			}
			else
			{
				out.print("<h3>Please enter correct answer....</h3>");
				req.getRequestDispatcher("LoginServlet1.jsp").include(req, res);
			}
		}
		else
		{
			out.print("<h3>Please Login First....</h3>");
			req.getRequestDispatcher("LoginServlet1.jsp").include(req, res);
		}
		
		
	}
}
