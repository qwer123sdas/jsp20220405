package chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class S14Servlet03
 */
@WebServlet("/S14Servlet03")
public class S14Servlet03 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S14Servlet03() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sql = "SELECT CustomerName, Country FROM Customers WHERE CustomerId = 1";
		
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
			if(rs.next()) {
				String customerName = rs.getString(1);
				String Country = rs.getString(2);
				
				/*System.out.println(customerName);
				System.out.println(Country);*/
				
				request.setAttribute("name", customerName);
				request.setAttribute("country", Country);

			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		String path = "/WEB-INF/view/chap14/ex02.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
