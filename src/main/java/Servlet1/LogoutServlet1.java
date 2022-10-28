package Servlet1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/logoutservlet1")
public class LogoutServlet1 extends HttpServlet{
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException
	{
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();
		Cookie ck = new Cookie("username","");
		ck.setMaxAge(0);
		res.addCookie(ck);
		
		//HttpSession- session.invalidate();
		out.print("<b>You are successfully logged out!!</b>");
		req.getRequestDispatcher("index.jsp").include(req, res);
	}
}
