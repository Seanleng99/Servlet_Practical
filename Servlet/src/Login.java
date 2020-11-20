import java.io.*;
import java.util.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Login() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Set response content type
		response.setContentType("text/html");

		PrintWriter out = response.getWriter();
		
		// Index page
		String idadmin = request.getParameter("idadmin");
		String password = request.getParameter("password");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1?serverTimezone=UTC", "root", "Sean990507");
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(
					"select * from db1.admin where idadmin='" + idadmin + "' and password='" + password + "'");
			
			rs.next();
			if (rs.getString("password").equals(password) && rs.getString("idadmin").equals(idadmin)) {
				response.sendRedirect("student.jsp");
			} else {
				out.println("Invalid username or password!");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
