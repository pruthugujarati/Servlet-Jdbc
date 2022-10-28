package Servlet1;

import java.awt.Checkbox;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/registerservlet1")
		
public class RegisterServlet1 extends HttpServlet {
	
	
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
	
	ServletContext con = getServletContext();
	con.setAttribute("uname", u);
	con.setAttribute("pass", p);
	con.setAttribute("question", que);
	con.setAttribute("answer", ans);
	
	String url = "jdbc:mysql://localhost:3306/USERDB";
	String user ="root";
	String pass = "Pgujarati108@@";
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection(url, user, pass);
		
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
		conn.close();
		
	} catch (ClassNotFoundException | SQLException e)
	{
		e.printStackTrace();
	}
	
	
	
	
	if(p.equals(rp))
	{
		out.println("Registration successfully done!! "+u);
		
//		Cookie c = new Cookie("username",u);
//		res.addCookie(c);
		
		RequestDispatcher rd= req.getRequestDispatcher("index.jsp");
		rd.include(req, res);
	}
	else
	{
		out.print("Password should be same");
	}
}
}