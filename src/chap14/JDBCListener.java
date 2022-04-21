package chap14;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import org.mariadb.jdbc.MariaDbPoolDataSource;

/**
 * Application Lifecycle Listener implementation class JDBCListener
 *
 */
@WebListener
public class JDBCListener implements ServletContextListener {
	
	//filed로 설정----------------------------------------
	private MariaDbPoolDataSource pool;
	//----------------------------------------------------
	
    /**
     * Default constructor. 
     */
    public JDBCListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
    	if(pool != null) {
    		pool.close();
    	}
    	
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  { 
    	
    	String jdbcInfoFilePath = "/WEB-INF/props/jdbc.properties";
    	
    	// application객체 생성
    	ServletContext application = sce.getServletContext();
    	
    	/*FileReader fr = application.getRealPath(jdbcInfoFilePath); String*/
    	// FileReader객체로 하면 tomcat이 어디 깔릴지 모르기 때문에, 경로가 절대경로이므로 
    	InputStream propsFile = application.getResourceAsStream(jdbcInfoFilePath);
    	// inputStream
    	
    	
    	// props객체 생성 : jsbc.properties가 Map의 형태이므로 이를 읽기 위해 생성
    	Properties props = new Properties();
    	
    	// props.load(propsFile); 읽어오기
    	try {
			props.load(propsFile);
		} catch (IOException e) {
			e.printStackTrace();
		}
    	String url = props.getProperty("db.url");
    	String schema = props.getProperty("db.schema");
    	String id = props.getProperty("db.id");
    	String pw = props.getProperty("db.pw");
    	
    	// tomcat과 db연결
    	String dburl = "jdbc:mariadb://" + url + "/" + schema 
    			+ "?user=" + id + "&password=" + pw;
    	
    	
    	//  MariaDbPoolDataSource는 연결정보를 잘 가지고 있는 놈임,이 때 서버를 열어준 것이므로
    	// 언젠간 닫아줘얗는데 여기는 contextDestroy()에서 닫아줌
    	try {
			this.pool = new MariaDbPoolDataSource(dburl);
			// pool을 application에 넣어줄거임, 그 전에 exception이 발생하므로 try-catch
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
    	
    	
    	try( Connection con = pool.getConnection();
    	// 테스트
    	Statement stmt = con.createStatement();
    	ResultSet rs = stmt.executeQuery("SELECT 3333"); ){// 여기서는 ;붙이면 안댐
   
    		if(rs.next()) {
    			if(rs.getInt(1) == 3333) {
    				System.out.println("데이터베이스 연결 성공@!");
    				application.setAttribute("dbpool", pool);
    			}
    		}
    		
    	}catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    }
	
}
