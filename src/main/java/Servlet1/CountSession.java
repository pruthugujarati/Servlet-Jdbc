package Servlet1;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Application Lifecycle Listener implementation class CountSession
 *
 */
public class CountSession implements HttpSessionListener {

   ServletContext ctx=null;
   static int total=0,current=0;
    
   public void sessionCreated(HttpSessionEvent se)  { 
         total++;
         current++;
         
         ctx=se.getSession().getServletContext();
         ctx.setAttribute("totaluser", total);
         ctx.setAttribute("currentuser", current);
    }

	
   public void sessionDestroyed(HttpSessionEvent se)  { 
        current--;
        ctx.setAttribute("currentuser", current);
    }
	
}
