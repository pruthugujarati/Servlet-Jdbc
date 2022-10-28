package Servlet1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MathsOptions extends HttpServlet{

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException
	{
		PrintWriter out = res.getWriter();
		
		String operator= req.getParameter("ans");
		int i= Integer.parseInt(req.getParameter("num1"));
		int j= Integer.parseInt(req.getParameter("num2"));
		System.out.println(operator);
		int k=0;
		switch(operator) {
		case "Addition":
			k=i+j;
			break;
		case "Substraction":
			k=i-j;
			break;
		case "Multiplication":
			k=i*j;
			break;
		case "Division":
			if(j==0) 
			{
				out.print("Denominator should not be zero.");
				return;
			}
			k=i/j;
			break;
		}
		out.print("<b>Answer is : "+k+"</b>");
		
	}
}
