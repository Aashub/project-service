<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page errorPage="error.jsp" %>
<%@include file="db.jsp" %>
<%
	String email=request.getParameter("email");
	String name=request.getParameter("name");
	String mob=request.getParameter("mob");
	String address=request.getParameter("address");
	String pwd=request.getParameter("pwd");
	String qr="update user set name=?,mob=?,address=?,pwd=? where email=?";
	PreparedStatement ps=con.prepareStatement(qr);
	ps.setString(1,name);
	ps.setString(2,mob);
	ps.setString(3,address);
	ps.setString(4,pwd);
	ps.setString(5,email);
	int i= ps.executeUpdate();
    response.sendRedirect("editUserProfile.jsp");
	%>		