<%@page errorPage="error.jsp"%>
<%@include file="db.jsp"%>
<%
	String pemail=request.getParameter("pemail");
	String uemail=request.getParameter("uemail");
	String date=request.getParameter("dt");
	String status=request.getParameter("status");
	String qr="update booking set bstatus=? where pemail=? and uemail=? and dt=?";
	PreparedStatement ps=con.prepareStatement(qr);
	ps.setString(1,status);
	ps.setString(2,pemail);
	ps.setString(3,uemail);
	ps.setString(4,date);
	int i=ps.executeUpdate();
	RequestDispatcher rd=request.getRequestDispatcher("viewAllRequest.jsp");
	rd.include(request, response);
	if(i>0){
		out.println("<script>window.alert('Status Updated')</script>");
	}
	else{
		out.println("<script>window.alert('Server Error Try again')</script>");
	}
%>
