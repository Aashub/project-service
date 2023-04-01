<%@include file="db.jsp" %>
<%
String email=(String)session.getAttribute("uid");
String pemail= request.getParameter("pemail");
String dt= request.getParameter("dt");
String name=request.getParameter("name");
			String qr="insert into booking values(?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(qr);
			ps.setString(1,pemail);
			ps.setString(2,email);
			ps.setString(3,dt);
			ps.setString(4,"Pending");
			int i= ps.executeUpdate();
			RequestDispatcher rd= request.getRequestDispatcher("UserHome.jsp");
			rd.include(request, response);
			if(i>0)
			{
				out.print("<script>window.alert('Booking Successful');</script>");
			}
			else
			{
				out.print("<script>window.alert('Server Down');</script>");
			}
			con.close();
		
		
		%>