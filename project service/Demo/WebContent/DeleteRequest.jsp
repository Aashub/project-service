<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page errorPage="error.jsp" %>
<%@include file="db.jsp" %>
<%
String uemail=request.getParameter("uemail");
String pemail=request.getParameter("pemail");
String dt=request.getParameter("dt");
String qr="delete from booking where uemail=? and pemail=? and dt=? ";
PreparedStatement ps=con.prepareStatement(qr);
ps.setString(1,uemail);
ps.setString(2,pemail);
ps.setString(3,dt);
int i= ps.executeUpdate();
RequestDispatcher rd=request.getRequestDispatcher("viewbookinguser.jsp");
rd.include(request, response);
if(i>0){
	out.println("<script>window.alert('Booking Cancelled')</script>");
}
else{
	out.println("<script>window.alert('Server Error Try again')</script>");
}

%>