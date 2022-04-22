package chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import chap14.javaBeans.Employee;

/**
 * Servlet implementation class S14Servlet08
 */
@WebServlet("/S14Servlet08")
public class S14Servlet08 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S14Servlet08() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sql = "SELECT FirstName, LastName, BirthDate FROM Employees";
		List<Employee> employee = new ArrayList<Employee>();
		
		// 1.연결
		ServletContext application = getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		
		// 2.
		try(
			Connection con = ds.getConnection();
				// 2. statement 생성
			Statement stmt = con.createStatement();
				// 3. 쿼리 실행
			ResultSet rs = stmt.executeQuery(sql);
				){
			// 4. 결과 정제
			while(rs.next()) {
				String firstName = rs.getString("FirstName");
				String lastName = rs.getString("LastName");
				String birthDay = rs.getString("BirthDate");
				
				employee.add(new Employee(firstName, lastName, birthDay));
				

			}
			request.setAttribute("employees", employee);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		String path = "/WEB-INF/view/chap14/ex06.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
