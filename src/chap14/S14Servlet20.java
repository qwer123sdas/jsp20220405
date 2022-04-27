package chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
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
 * Servlet implementation class S14Servlet20
 */
@WebServlet("/S14Servlet20")
public class S14Servlet20 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S14Servlet20() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String keyword = request.getParameter("keyword");
		if(keyword == null || keyword.trim().equals("")) {
			keyword = "";
		}
		keyword = "%" + keyword.trim() + "%";
	
		
		String sql = "SELECT CustomerID, CustomerName, City, Country, PostalCode "
				+ "FROM Customers "
				+ "WHERE CustomerName LIKE ? "
				+ "ORDER BY CustomerID";
		
		
		List<Customer> list = new ArrayList<Customer>();
		
		ServletContext application = getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		
		try(Connection con = ds.getConnection();
			PreparedStatement stmt = con.prepareStatement(sql);){
			
			stmt.setNString(1, keyword);
			
			try(ResultSet rs = stmt.executeQuery();){
				while(rs.next()) {
					Customer c = new Customer();
					c.setId(rs.getInt(1));
					c.setName(rs.getString(2));
					c.setCity(rs.getString(3));
					c.setCountry(rs.getString(4));
					c.setPostCode(rs.getString(5));
					
					list.add(c);
				}
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		request.setAttribute("list", list);
		
		String path = "/WEB-INF/view/chap14/ex14.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
