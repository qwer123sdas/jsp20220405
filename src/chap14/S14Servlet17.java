package chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import chap14.javaBeans.Employee;

/**
 * Servlet implementation class S14Servlet17
 */
@WebServlet("/S14Servlet17")
public class S14Servlet17 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S14Servlet17() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sql = "SELECT EmployeeID, LastName, FirstName, BirthDate FROM Employees "
				+ "ORDER BY EmployeeID";
		List<Employee> list = new ArrayList<>();
		
		ServletContext application = getServletContext();
		DataSource ds = (DataSource)application.getAttribute("dbpool");
		
		try(Connection con = ds.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql)){
			
			try(ResultSet rs = pstmt.executeQuery()){
				while(rs.next()) {
					Employee emp = new Employee();
					
					emp.setId(rs.getInt(1));
					emp.setLastName(rs.getString(2));
					emp.setFirstName(rs.getString(3));
					emp.setBirthDate(rs.getString(4));
					
					list.add(emp);
				}
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}

		
		request.setAttribute("employeeList", list);
		
		String path = "/WEB-INF/view/chap14/ex11.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		int result = 0;
		
		String sql = "DELETE FROM Employees WHERE EmployeeID = ?";
		
		ServletContext application = getServletContext();
		DataSource ds = (DataSource)application.getAttribute("dbpool");
		
		try(Connection con = ds.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql)){
			
			pstmt.setInt(1, Integer.valueOf(id));
			result = pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		String location = "S14Servlet17";
		if(result == 1) {
			// 잘된거
			location += "?success=true";
		}else {
			// 잘못된 거
			location += "?success=false";
		}

		response.sendRedirect(location);
		

		

	}

}
