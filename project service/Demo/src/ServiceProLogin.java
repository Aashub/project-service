

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/ServiceProLogin")
public class ServiceProLogin extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		String email=request.getParameter("email");
		String pwd=request.getParameter("pwd");
	
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/project","root","root");
			String qr="select * from serviceprovider where status='yes' and email=? and password=?";
			PreparedStatement ps=con.prepareStatement(qr);
			ps.setString(1,email);
			ps.setString(2,pwd);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				HttpSession session=request.getSession();
				session.setAttribute("id", email);
				response.sendRedirect("ServiceProHome.jsp");
			}
			else
			{
				RequestDispatcher rd=request.getRequestDispatcher("index.html");
				rd.include(request, response);
				out.println("<script>window.alert('invalid id and password');</script>");
			}
		}
		catch (Exception e) {
			out.println(e);
		}
	}

}
