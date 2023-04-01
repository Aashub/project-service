

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AddService")
public class AddService extends HttpServlet {


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String stype=request.getParameter("stype");
		String pwd=request.getParameter("pwd");
		String mob=request.getParameter("mob");
		String area=request.getParameter("area");
		String address=request.getParameter("address");
		String ch=request.getParameter("charges");
		int charges= Integer.parseInt(ch);
		String status="no";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/project","root","root");
			String qr="insert into serviceprovider values(?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(qr);
			ps.setString(1,name);
			ps.setString(2,email);
			ps.setString(3,pwd);
			ps.setString(4,stype);
			ps.setString(5,mob);
			ps.setInt(6,charges);
			ps.setString(7,area);
			ps.setString(8,address);
			ps.setString(9,status);
			int i= ps.executeUpdate();
			if(i>0)
			{
				out.print("successfully added");
			}
			else
			{
				out.print("not added");
			}
			con.close();
		}
		catch (Exception e) {
			out.println(e);
		}
	}

}
