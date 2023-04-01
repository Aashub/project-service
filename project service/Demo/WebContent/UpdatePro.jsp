<%@page errorPage="error.jsp" %>
<%@include file="db.jsp" %>
<%
String email=request.getParameter("email");
String name=request.getParameter("name");
String mob=request.getParameter("mob");
String pwd=request.getParameter("pwd");
String stype=request.getParameter("stype");
String area=request.getParameter("area");
String ch=request.getParameter("charges");
int charges=Integer.parseInt(ch);
String address=request.getParameter("address");
	String qr="update serviceprovider set name=?,mob=?,password=?,stype=?,area=?,charges=?,address=? where email=?";
	PreparedStatement ps=con.prepareStatement(qr);
	ps.setString(1,name);
	ps.setString(2,mob);
	ps.setString(3,pwd);
	ps.setString(4,stype);
	ps.setString(5,area);
	ps.setInt(6,charges);
	ps.setString(7,address);
	ps.setString(8,email);
	int i= ps.executeUpdate();
    response.sendRedirect("editServiceProProfile.jsp");
%>