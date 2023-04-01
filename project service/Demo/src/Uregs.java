

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


@WebServlet("/Uregs")
public class Uregs extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String pwd=request.getParameter("pwd");
		String address=request.getParameter("address");
		String mob=request.getParameter("mob");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/project","root","root");
			String qr="insert into user values(?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(qr);
			ps.setString(1,name);
			ps.setString(2,email);
			ps.setString(3,pwd);
			ps.setString(4,address);
			ps.setString(5,mob);
			RequestDispatcher rd= request.getRequestDispatcher("index.html");
			rd.include(request, response);
			
			int i= ps.executeUpdate();
			if(i>0)
			{
				out.println("<script>window.alert('Signup Successful');</script>");
				
			}
			else
			{
				out.println("signup failed");
			}
			con.close();
		}
		catch (Exception e) {
			out.println(e);
		}
	}

}
