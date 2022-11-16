package Servlet1;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet(value="/loginservlet1",initParams= {
		@WebInitParam(name="gmail",value="Pruthvi@gmail.com")
})

public class LoginServlet1 extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest req , HttpServletResponse res) throws IOException, ServletException
	{
		res.setContentType("text/html");
		
		res.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); //http 1.1
		res.setHeader("Pragma","no-cache"); //http 1.0
		res.setHeader("Expires","0"); //proxies
		res.setDateHeader("Expires", -1);
		
		PrintWriter out = res.getWriter();
		
		ServletConfig config = getServletConfig();
		
		String gmail= config.getInitParameter("gmail");
		
		String s2 = req.getParameter("uname2");  //login jsp
		String s3 = req.getParameter("pwd2");
//		String s4= (String) con.getAttribute("uname");
//		String s5 = (String) con.getAttribute("pass");		
//		String s7 = (String) con.getAttribute("answer");
		
		
		try {
			ServletContext ctx= getServletContext();
			Connection conn = (Connection) ctx.getAttribute("mycon");
			
			PreparedStatement ps = conn.prepareStatement("select password , lastname from users where username=?");
			ps.setString(1, s2);
			
			ResultSet rs = ps.executeQuery();
			
		while(rs.next())
		{
			if(s3.equals(rs.getString(1)))
			{
				out.println("<br>Your gmail id : "+gmail);
				
				Cookie c = new Cookie("username",s2);
				res.addCookie(c);
				
				//HttpSession
				HttpSession session = req.getSession();
				session.setAttribute("lastname", rs.getString(2));

				RequestDispatcher rd = req.getRequestDispatcher("Intermediate.jsp");
				rd.include(req, res);
				
			}
			else 
		       {
				out.print("Enter correct information.....");
				RequestDispatcher rd = req.getRequestDispatcher("LoginServlet1.jsp");
				rd.include(req, res);
		       }
		}
		
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}
}


