package Servlet1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/shop")
public class Shop extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();
		String stock1 = req.getParameter("stock");
		
		  
		switch (stock1){
		case "Print1side":
			
			req.getRequestDispatcher("Shop.jsp").include(req, resp);
			out.print("<h2>Regular Price : 75$</h2>");
			break;
		case "Print2side":
			req.getRequestDispatcher("Shop.jsp").include(req, resp);
			out.print("<h2>Regular Price : 85$</h2>");
			break;
	}

	
}
}
