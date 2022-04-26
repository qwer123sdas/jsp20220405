package chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import chap14.javaBeans.Customer;

/**
 * Servlet implementation class S14Servlet18
 */
@WebServlet("/S14Servlet18")
public class S14Servlet18 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S14Servlet18() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sql = "SELECT CustomerID, CustomerName, Country, City, PostalCode FROM Customers ORDER BY CustomerID";
		List<Customer> list = new ArrayList<>();
		
		ServletContext application = getServletContext();
		DataSource ds = (DataSource)application.getAttribute("dbpool");
		
		try(Connection con = ds.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql)){
			try(ResultSet rs = pstmt.executeQuery()){
				while(rs.next()) {
					Customer cus = new Customer();
					cus.setId(rs.getInt(1));
					cus.setName(rs.getString(2));
					cus.setCountry(rs.getString(3));
					cus.setCity(rs.getString(4));
					cus.setPostCode(rs.getString(5));
					
					list.add(cus);
				}
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		request.setAttribute("customerList", list);
		String path = "/WEB-INF/view/chap14/ex12.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String sql = "DELETE FROM Customers WHERE CustomerID = ?";

		int result = 0;
		
		ServletContext application = getServletContext();
		DataSource ds = (DataSource)application.getAttribute("dbpool");
		
		try(Connection con = ds.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql)){
			pstmt.setInt(1, Integer.valueOf(id));
			result = pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		String path = "S14Servlet18";
		if(result == 1) {
			path += "?success=true";
		}else {
			path += "?success=false";
		}
		
		response.sendRedirect(path);
			
		
	}

}
