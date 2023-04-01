

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateStatus")
public class UpdateStatus extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		String email=request.getParameter("email");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/project","root","root");
			String qr="update serviceprovider set status='yes' where email=?";
			PreparedStatement ps=con.prepareStatement(qr);
			ps.setString(1,email);
			int i= ps.executeUpdate();
			RequestDispatcher rd=request.getRequestDispatcher("Show.jsp");
			rd.include(request, response);
			if(i>0)
			{
				out.print("successfully updated");
			}
			else
			{
				out.print("unable to update");
			}
			con.close();
		}
		catch (Exception e) {
			out.println(e);
		}
	}

}
