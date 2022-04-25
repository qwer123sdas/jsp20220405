package chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class S14Servlet15
 */
@WebServlet("/S14Servlet15")
public class S14Servlet15 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S14Servlet15() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		String path = "/WEB-INF/view/chap14/ex09.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int result = 0;
		String sql = "INSERT INTO Employees (LastName, FirstName, BirthDate, Photo, Notes) Values (?, ?, ?, ?, ?)";
		
		ServletContext application = getServletContext();
		DataSource ds = (DataSource)application.getAttribute("dbpool");
		
		try(Connection con = ds.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql)){
			String lastName = request.getParameter("lastName");
			String firstName = request.getParameter("firstName");
			String BirthDate = request.getParameter("birthDate");
			String photo = request.getParameter("photo");
			String notes = request.getParameter("notes");
			
			pstmt.setString(1, lastName);
			pstmt.setString(2, firstName);
			pstmt.setString(3, BirthDate);
			pstmt.setString(4, photo);
			pstmt.setString(5, notes);
			
			result = pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		String path = "S14Servlet15";
		if(result == 1) {
			// insert 성공
			path += "?success=true";
		}else {
			path += "?success=false";
		}
		response.sendRedirect(path);
	}

}
