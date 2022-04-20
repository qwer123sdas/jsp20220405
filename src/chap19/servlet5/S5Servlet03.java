package chap19.servlet5;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class S5Servlet03
 */
@WebServlet("/s5/servlet03")
public class S5Servlet03 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S5Servlet03() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String logout = request.getParameter("logout");
		if(logout != null && logout.equals("true")) {
			request.getSession().invalidate();  // invalidate??
		}
		String location = request.getContextPath() + "/chap19/ex02.jsp";
		response.sendRedirect(location);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		// servlet은 jsp가 아니라 java니까 session 객체 만들어 줘야 가져올 수 있음
		HttpSession session = request.getSession();
		
		if(id != null && id.equals(pw)) {
			session.setAttribute("loggedInUser", id);
		}
		String location = request.getContextPath() + "/chap19/ex02.jsp";
		response.sendRedirect(location);
	}

}
