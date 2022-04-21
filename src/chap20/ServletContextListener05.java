package chap20;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class ServletContextListner05
 *
 */
@WebListener
public class ServletContextListener05 implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public ServletContextListener05() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  {
    	ServletContext application = sce.getServletContext();
    	
    	String contextPath = application.getContextPath(); // 자바코드니까, request.contextPath랑 애초에 다른 성격이긴 하지만, 결국 tomcat이 가지고 있기 때문에 java도 가지고 올 수 있는 것!
    	
    	application.setAttribute("appRoot", contextPath);
    }
	
}
