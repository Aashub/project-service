<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page errorPage="error.jsp" %>
<%@include file="db.jsp" %>
<%
	
	String nm=request.getParameter("name");
    String em=request.getParameter("email");
	String ph=request.getParameter("phone");
	String sub=request.getParameter("subject");
	String msg=request.getParameter("message");
	String qr="insert into contactus values(?,?,?,?,?)";
	PreparedStatement ps=con.prepareStatement(qr);
	ps.setString(1,nm);
	ps.setString(2,em);
	ps.setString(3,ph);
	ps.setString(4,sub);
	ps.setString(5,msg);
	int i= ps.executeUpdate();
    if(i>0)
	{
		out.print("Form Submitted");
	}
	else
	{
		out.print("Form not Submitted");
	}
	con.close();
	%>		