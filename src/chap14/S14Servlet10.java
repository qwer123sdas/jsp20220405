package chap14;

import java.io.IOException;
import java.sql.Connection;
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
 * Servlet implementation class S10Servlet10
 */
@WebServlet("/S40Servlet10")
public class S14Servlet10 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S14Servlet10() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String param = request.getParameter("title");  
		String param1 = request.getParameter("param1");
		
		String sql = "SELECT CustomerName, City, Country, PostalCode "
				+ "FROM Customers ";
				/*+ "WHERE " + param  + " = " + "'" + param1 + "'";*/
		
		// string연결 연산자로 작성하여 찾는 것은 굉장히 위험하다.
		// sql indection : 왜냐하면 
		if(param != null && param !="") {
			sql = sql +  "WHERE " + param  + " = " + "'" + param1 + "'";
		}
		
		
		List<Customer> list = new ArrayList<Customer>();
		
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
				String name = rs.getString("CustomerName");
				String city = rs.getString("City");
				String country = rs.getString("Country");
				String postCode = rs.getString("PostalCode");
				
				Customer customer = new Customer();
				
				customer.setName(name);
				customer.setCity(city);
				customer.setCountry(country);
				customer.setPostCode(postCode);
				
				list.add(customer);
				

			}
			request.setAttribute("customers", list);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
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
