<%@include file="db.jsp" %>
<%
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
			RequestDispatcher rd=request.getRequestDispatcher("serviceproreg.html");
			rd.include(request, response);
			if(i>0){
				out.println("<script>window.alert('Signup successful')</script>");
			}
			else{
				out.println("<script>window.alert('Server Error Try again')</script>");
			}

			con.close();
		
		
		%>