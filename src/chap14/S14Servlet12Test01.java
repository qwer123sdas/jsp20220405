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
 * Servlet implementation class S14Servlet12Test01
 */
@WebServlet("/S14Servlet12Test01")
public class S14Servlet12Test01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S14Servlet12Test01() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<Customer> list = new ArrayList<>();
		String title = request.getParameter("title");
		// playes holder넣어주기 : =?,,, PreparedStatement객체 필요함
		String sql = "SELECT CustomerName, Country, City, PostalCode FROM Customers WHERE "+ title +" = ?";
		ServletContext application = getServletContext();
		DataSource ds = (DataSource)application.getAttribute("dbpool");
		
		String param = request.getParameter("city");
		
		try(Connection con = ds. getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);
				){
			
			pstmt.setString(1, param);  // 1 = 첫번째 물음표에 param을 넣어준다.
			
			try(ResultSet rs = pstmt.executeQuery()){
				while(rs.next()) {
					Customer c = new Customer();
					c.setName(rs.getString(1));
					c.setCountry(rs.getString(2));
					c.setCity(rs.getString(3));
					c.setPostCode(rs.getString(4));
					
					list.add(c);
				}
			}
			
	
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		

		request.setAttribute("customers", list);
		
		String path = "/WEB-INF/view/chap14/ex05.jsp";
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