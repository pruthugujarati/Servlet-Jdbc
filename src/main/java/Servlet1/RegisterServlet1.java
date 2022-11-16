package Servlet1;

import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/registerservlet1")
		
public class RegisterServlet1 extends HttpServlet{
	
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException
	{
		res.setContentType("text/html");
	
	PrintWriter out = res.getWriter();
	String u = req.getParameter("uname1");
	String p= req.getParameter("pwd1");
	String rp = req.getParameter("rpwd");
	String que= req.getParameter("question");
	String ans= req.getParameter("answer");
	String f = req.getParameter("fname1");
	String l = req.getParameter("lname1");
	String bday = req.getParameter("bdate1");
	String email= req.getParameter("email");
	
//	ServletContext con = getServletContext();
//	con.setAttribute("uname", u);
//	con.setAttribute("pass", p);
//	con.setAttribute("question", que);
//	con.setAttribute("answer", ans);
	boolean flag = false;
	
	if(p.equals(rp))
	{	
	try {
		ServletContext ctx= getServletContext();
		Connection conn = (Connection) ctx.getAttribute("mycon");
		
		
		PreparedStatement psmt1 = conn.prepareStatement("select USERNAME from users");
		ResultSet rs = psmt1.executeQuery();
		while(rs.next())
		{
		  if(u.equals(rs.getString(1)))
		  {
			  flag =true;
		  }
		}
		
		if(flag)
		{
			System.out.println("username already taken");
			out.print("UserName already taken!!!");
			RequestDispatcher rd= req.getRequestDispatcher("RegisterServlet1.jsp");
			rd.include(req, res);
		}
		else
		{
		PreparedStatement psmt = conn.prepareStatement("insert into users values(?,?,?,?,?,?,?,?)");
		
		psmt.setString(1, u);
		psmt.setString(2, p);
		psmt.setString(3, f);
		psmt.setString(4, l);
		psmt.setString(5, bday);
		psmt.setString(6, que);
		psmt.setString(7, ans);
		psmt.setString(8, email);
		
		int count = psmt.executeUpdate();
		
		if(count==1)
			System.out.println(count+"row inserted successfully");
		else
			System.out.println("no record inserted");
		
		out.println("Registration successfully done!! "+u);
		
		RequestDispatcher rd= req.getRequestDispatcher("index.jsp");
		rd.include(req, res);
		}
	} 
	catch (SQLException e)
	{
		System.out.println(e);
	}
	
//		Cookie c = new Cookie("username",u);
//		res.addCookie(c);
	}
	else
	{
		out.print("Password should be same");
	}
	
}
}