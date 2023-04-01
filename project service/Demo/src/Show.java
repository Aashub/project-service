

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Show")
public class Show extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 PrintWriter out=response.getWriter();
		 response.setContentType("text/html");
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/project","root","root");
				String qr="select * from serviceprovider";
				Statement st=con.createStatement();
				ResultSet rs=st.executeQuery(qr);
				if(rs.next())
				{
					out.println("<table align= center border=1px>");
					out.println("<th>Name</th>");
					out.println("<th>Email</th>");
					out.println("<th>Service Type</th>");
					out.println("<th>Charges</th>");
					out.println("<th>Address</th>");
					out.println("<th>Mobile No</th>");
					out.println("<th>Area</th>");
					out.println("<th>Status</th>");
					do
					{
						String name=rs.getString("name");
						String email=rs.getString("email");
						String stype=rs.getString("stype");
						String charges=rs.getString("charges");
						String mob=rs.getString("mob");
						String area=rs.getString("area");
						String address=rs.getString("address");
						String status=rs.getString("status");
						out.println("<tr>");
						out.println("<td>");
						out.println(name);
						out.println("</td>");
						out.println("<td>");
						out.println(email);
						out.println("</td>");
						out.println("<td>");
						out.println(stype);
						out.println("</td>");
						out.println("<td>");
						out.println(charges);
						out.println("</td>");
						out.println("<td>");
						out.println(address);
						out.println("</td>");
						out.println("<td>");
						out.println(mob);
						out.println("</td>");
						out.println("<td>");
						out.println(area);
						out.println("</td>");
						out.println("<td>");
						out.println(status);
						out.println("</td>");
						out.println("<td>");
						out.println("<a href=DeleteProvider?email="+email+">Delete</a>");
						out.println("</td>");
						out.println("<td>");
						out.println("<a href=UpdateStatus?email="+email+">Update</a>");
						out.println("</td>");
						out.println("</tr>");
						
					}
					while(rs.next());
					out.println("</table>");
				}
				else
				{
					out.println("No Records Found");
				}
				con.close();
			}
			catch(Exception e)
			{
				out.println(e);
			}
	}

}
