

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Alogin")
public class Alogin extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 PrintWriter out=response.getWriter();
		 response.setContentType("text/html");
		 String id=request.getParameter("id");
		 String pwd=request.getParameter("pwd");
		 if(id.equals("admin")&& pwd.equals("12345"))
		 {
			// response.sendRedirect("adminhome.html");
			 Cookie ck=new Cookie("id",id);
			 response.addCookie(ck);
			 response.sendRedirect("Ahome"); 
//			 RequestDispatcher rd=request.getRequestDispatcher("Ahome");
//			 rd.forward(request, response);
	 }
		 else
		 {
			 RequestDispatcher rd=request.getRequestDispatcher("admin.html");
			 rd.include(request, response);
			 out.println("invalid id and password");
		 }
	}

}
