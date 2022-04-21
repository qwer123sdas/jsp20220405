package chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.*;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class S14Servlet01
 */
@WebServlet("/S14Servlet01")
public class S14Servlet01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S14Servlet01() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// database에서 records 가져오기
		/*
		List<String> cities = new ArrayList<>();
		cities.add("Berlin");
		cities.add("London");
		cities.add("Madrid");
		*/
		
		ServletContext application = getServletContext();
		List<String> cities = new ArrayList<>();
		
		// 1. 연결설정
		DataSource ds = (DataSource)application.getAttribute("dbpool");
		
		String sql ="SELECT city FROM Customers";
		try(
			Connection con = ds.getConnection();
			
			// 2. statement 객체생성
			Statement stmt = con.createStatement();
			
			// 3. 쿼리 실행 = sqld을 실행
			ResultSet rs = stmt.executeQuery(sql); // 명령문을 실행
		){
			
			// 4. 실행결과 정제
			while(rs.next()) {
				String city = rs.getString(1);
				/*System.out.println(city);*/
				cities.add(city);
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		// 5. 자원 닫기
		/*rs.close(); stmt.close(); */
		
		
		
		
		// request에 records ㄴ넣기
		request.setAttribute("cities", cities);
		
		// jsp로 forward하기
		String location = "/WEB-INF/view/chap14/ex01.jsp";
		request.getRequestDispatcher(location).forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
