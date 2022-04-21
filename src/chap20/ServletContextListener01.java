package chap20;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class ServletContextListener01
 *
 */

@WebListener    // 또는 web.xml을 사용해도 됨
public class ServletContextListener01 implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public ServletContextListener01() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    //﻿ 어플리케이션이 종료될 때 시작하는 메소드
    public void contextDestroyed(ServletContextEvent sce)  { 
    	System.out.println("내 jsp 앱 종료 되었음.!!!");
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    
    //﻿ 어플리케이션이 시작될 때 시작하는 메소드
    public void contextInitialized(ServletContextEvent sce)  { 
    	System.out.println("내 jsp 앱 시작 되었음..!!@@@@@@@@");
    }
	
}
