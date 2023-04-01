
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<script type="text/javascript" src="jquery.js">
</script>
<script type="text/javascript" src="jquery-ui.min.js">
</script>
<script type="text/javascript" src="tt_slideshow.js">
</script>
<script type="text/javascript" src="bootstrap.min.js">
</script>
<script type="text/javascript" src="Customjs.js">
</script>

<meta name="viewport" content="width=device-width, initial-scale=1">
<title>
HomeServices.com
</title>
<link rel="stylesheet"  href="bootstrap.css" type="text/css" media="screen"/>
<link rel="stylesheet"  href="style.css" type="text/css" media="screen"/>
<!--[if lte IE 8]>
<link rel="stylesheet"  href="menuie.css" type="text/css" media="screen"/>
<link rel="stylesheet"  href="vmenuie.css" type="text/css" media="screen"/>
<![endif]-->
<script type="text/javascript" src="totop.js">
</script>
<!--[if IE 7]>
<style type="text/css" media="screen">
#ttr_vmenu_items  li.ttr_vmenu_items_parent {margin-left:-16px;font-size:0px;}
</style>
<![endif]-->
<!--[if lt IE 9]>
<script type="text/javascript" src="html5shiv.js">
</script>
<script type="text/javascript" src="respond.min.js">
</script>
<![endif]--><style type="text/css">
<!--
.style1 {
	font-family: 'Open Sans';
	font-size: 1em;
	color: rgba(255,255,255,1);
}
-->
</style></head>
<body class="Home">
<div class="totopshow">
<a href="#" class="back-to-top"><img alt="Back to Top" src="images/gototop0.png"/></a>
</div>
<div id="ttr_page" class="container">
<header id="ttr_header">
<div id="ttr_header_inner">
<div class="headerforeground01">
</div>
<div class="headerforeground02">
</div>
<div class="ttr_headershape01">
<div class="html_content"><p><span style="font-family:'Open Sans';font-weight:700;font-size:1em;color:rgba(78,78,78,1);">452525221</span></p></div>
</div>
<div class="ttr_headershape02">
<div class="html_content"><p><span style="font-family:'Open Sans';font-weight:700;font-size:1em;color:rgba(78,78,78,1);">Info@HomeServices.co</span></p></div>
</div>
</div>
</header>
<nav id="ttr_menu" class="navbar-default navbar">
   <div id="ttr_menu_inner_in">
<div class="menuforeground">
</div>
<div class="ttr_menushape1">
<div class="html_content"><p><span style="font-family:'Open Sans';font-weight:700;font-size:1.8em;color:rgba(200,49,66,1);">Home Services</span></p></div>
</div>
<div id="navigationmenu">
<div class="navbar-header">
<button id="nav-expander" data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
<span class="sr-only">
</span>
<span class="icon-bar">
</span>
<span class="icon-bar">
</span>
<span class="icon-bar">
</span>
</button>
<img  class="ttr_menu_logo" src="menulogo1.png" >
</div>
</div>
</div>
</nav>
<%@page import="java.sql.ResultSet" %>
<%@page errorPage="error.jsp" %>
<%@include file="db.jsp" %>
<%
String name=request.getParameter("name");
%>
<% 
String qr="select * from serviceprovider where name=? ";
PreparedStatement ps=con.prepareStatement(qr);
ps.setString(1,name);
ResultSet rs=ps.executeQuery();
if(rs.next())
{
	%>
	
<div class="post_column col-lg-4 col-md-12 col-sm-12 col-xs-12">
<div class="ttr_Home_html_column10">

<div class="html_content"><p style="margin:0.5em 0.5em 0.5em 0.5em;text-align:Center;">&nbsp;</p>
<p style="margin:0.5em 0.5em 0.5em 0.5em;text-align:Center;">&nbsp;</p><p style="margin:0.5em 0em 0.71em 0em;"><span style="font-family:'Open Sans';font-weight:700;font-size:1.429em;color:rgba(78,78,78,1);"> </span></p>
<p style="text-align:Center;line-height:1.76056338028169;"><span style="font-family:'Open Sans';font-size:1em;color:rgba(78,78,78,1);">	

<div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div> <br />
<style>
table
		{
			width: 950px;
			border-collapse: collapse;
		}
th
		{
			height: 50px;
			background-color: yellow;;
		    text-align: center;
		}
tr
		{
			text-align: center;
			

}
</style>
	<table align="center" border="1px">
	<tr>
	<th>Name</th>
	<th>Email</th>
	<th>Password</th>
	<th>Service Type</th>
	<th>Charges</th>
	<th>Area</th>
	<th>Address</th>
	<th>Mobile number</th>
	</tr>
	<%
	do
	{
		String pemail=rs.getString("email");
		String pwd=rs.getString("password");
		String stype=rs.getString("stype");
		String charges=rs.getString("charges");
		String area=rs.getString("area");
		String address=rs.getString("address");
		String mob=rs.getString("mob");
		
		%>
		<tr>
		<td><%=name %></td>
		<td><%=pemail %></td>
		<td><%=pwd %></td>
        <td><%=stype %></td>
		<td><%=charges %></td>
		<td><%=area %></td>
		<td><%=address %></td>
		<td><%=mob %></td>
		</tr>
		<%
	}while(rs.next());
	%>
	</table>
	<%
}
else
{
  out.println("No Providers Found");
}
con.close();
%>

<br/>
<p style="margin:1.43em 0em 0.36em 0em;text-align:Center;line-height:1.69014084507042;"></p></div>
<div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
<div style="clear:both;"></div>
</div>
</div>
</div>


<div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
<div style="height:0px;width:0px;overflow:hidden;"></div>
<footer id="ttr_footer">
<div class="ttr_footerHome_html_row0 row">
<div class="post_column col-lg-3 col-md-6 col-sm-6 col-xs-12">
<div class="ttr_footerHome_html_column00">
<div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
<div class="html_content"><p style="margin:0em 0em 0em 4.29em;"><br style="font-family:'Open Sans';font-weight:700;font-size:1.714em;color:rgba(255,255,255,1);" /></p><p style="margin:0em 0em 0em 4.29em;"><span style="font-family:'Open Sans';font-size:1.286em;color:rgba(255,255,255,1);">COMPANY</span></p><p style="margin:0em 0em 0em 4.29em;"><br style="font-family:'Open Sans';font-size:1.143em;color:rgba(255,255,255,1);" /></p><p style="margin:0em 0em 0em 4.29em;"><span style="font-family:'Open Sans';font-weight:700;font-size:1em;color:rgba(255,255,255,1);">About us</span></p><p style="margin:0em 0em 0em 4.29em;"><span style="font-family:'Open Sans';font-weight:700;font-size:1em;color:rgba(255,255,255,1);">Services</span></p>
  <p style="margin:0em 0em 0em 4.29em;"><span style="font-family:'Open Sans';font-weight:700;font-size:1em;color:rgba(255,255,255,1);">Our Work</span></p>
</div>


<div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
</div>
</div>
<div class="clearfix visible-xs-block">
</div>
<div class="post_column col-lg-3 col-md-6 col-sm-6 col-xs-12">
<div class="ttr_footerHome_html_column03">
<div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
<div class="html_content"><p style="margin:0em 0em 0em 4.29em;"><br style="font-family:'Open Sans';font-weight:700;font-size:1.714em;color:rgba(255,255,255,1);" /></p><p style="margin:0em 0em 0em 4.29em;"><span style="font-family:'Open Sans';font-size:1.286em;color:rgba(255,255,255,1);">OUR SERVICES</span></p><p style="margin:0em 0em 0em 4.29em;"><br style="font-family:'Open Sans';font-size:1.143em;color:rgba(255,255,255,1);" /></p><p style="margin:0em 0em 0em 4.29em;"><span style="font-family:'Open Sans';font-weight:700;font-size:1em;color:rgba(255,255,255,1);">Plumbers,Electricians,</span></p><p style="margin:0em 0em 0em 4.29em;"><span style="font-family:'Open Sans';font-weight:700;font-size:1em;color:rgba(255,255,255,1);">Cooks, Carpenters, Painters</span></p><p style="margin:0em 0em 0em 4.29em;"><span style="font-family:'Open Sans';font-weight:700;font-size:1em;color:rgba(255,255,255,1);">Gardners, Mechanics, and</span></p>
<p style="margin:0em 0em 0em 4.29em;"><span style="font-family:'Open Sans';font-weight:700;font-size:1em;color:rgba(255,255,255,1);">much more...</span></p>
</div>

<div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
</div>
</div>
<div class="clearfix visible-xs-block">
</div>
<div class="post_column col-lg-3 col-md-6 col-sm-6 col-xs-12">
<div class="ttr_footerHome_html_column03">
<div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
<div class="html_content"><p style="margin:0em 0em 0em 4.29em;"><br style="font-family:'Open Sans';font-weight:700;font-size:1.714em;color:rgba(255,255,255,1);" /></p><p style="margin:0em 0em 0em 4.29em;"><span style="font-family:'Open Sans';font-size:1.286em;color:rgba(255,255,255,1);">OUR OFFERS</span></p><p style="margin:0em 0em 0em 4.29em;"><br style="font-family:'Open Sans';font-size:1.143em;color:rgba(255,255,255,1);" /></p><p style="margin:0em 0em 0em 4.29em;"><span style="font-family:'Open Sans';font-weight:700;font-size:1em;color:rgba(255,255,255,1);">20% Discount on Visiting</span></p><p style="margin:0em 0em 0em 4.29em;"><span style="font-family:'Open Sans';font-weight:700;font-size:1em;color:rgba(255,255,255,1);">charges for a limited period</span></p><p style="margin:0em 0em 0em 4.29em;"><span style="font-family:'Open Sans';font-weight:700;font-size:1em;color:rgba(255,255,255,1);">of time. Hurry Up!!!</span></p>
</div>

<div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
</div>
</div>
<div class="clearfix visible-xs-block">
</div>
<div class="post_column col-lg-3 col-md-6 col-sm-6 col-xs-12">
<div class="ttr_footerHome_html_column03">
<div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
<div class="html_content"><p style="margin:0em 0em 0em 4.29em;"><br style="font-family:'Open Sans';font-weight:700;font-size:1.714em;color:rgba(255,255,255,1);" /></p><p style="margin:0em 0em 0em 4.29em;"><span style="font-family:'Open Sans';font-size:1.286em;color:rgba(255,255,255,1);">CONTACT US</span></p><p style="margin:0em 0em 0em 4.29em;"><br style="font-family:'Open Sans';font-size:1.143em;color:rgba(255,255,255,1);" /></p><p style="margin:0em 0em 0em 4.29em;"><span style="font-family:'Open Sans';font-weight:700;font-size:1em;color:rgba(255,255,255,1);">1235, New Park Road</span></p><p style="margin:0em 0em 0em 4.29em;"><span style="font-family:'Open Sans';font-weight:700;font-size:1em;color:rgba(255,255,255,1);">First Street, NEWYORK</span></p><p style="margin:0em 0em 0em 4.29em;"><span style="font-family:'Open Sans';font-weight:700;font-size:1em;color:rgba(255,255,255,1);">USA.</span></p><p style="margin:0em 0em 0em 4.29em;"><span style="font-family:'Open Sans';font-weight:700;font-size:1em;color:rgba(255,255,255,1);">TELEPHONE: + 1800 235 6200</span></p><p style="margin:0em 0em 0em 4.29em;"><span style="font-family:'Open Sans';font-weight:700;font-size:1em;color:rgba(255,255,255,1);">FAX: + 1800 215 2000</span></p>
<p style="margin:0em 0em 0em 4.29em;"><span style="font-family:'Open Sans';font-weight:700;font-size:1em;color:rgba(255,255,255,1);">EMAIL: Info@HomeServices.com</span></p>
</div>
<div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
</div>
</div>
<div class="clearfix visible-lg-block visible-sm-block visible-md-block visible-xs-block">
</div>
</div>
<div class="ttr_footer_bottom_footer">
<div class="ttr_footer_bottom_footer_inner">
<div class="ttr_footershape1">
</div>
</div>
</div>
</footer>
<div style="height:0px;width:0px;overflow:hidden;-webkit-margin-bottom-collapse: separate;"></div>
</div>
<script type="text/javascript">
WebFontConfig = {
google: { families: [ 'Open+Sans'] }
};
(function() {
var wf = document.createElement('script');
wf.src = ('https:' == document.location.protocol ? 'https' : 'http') + '://ajax.googleapis.com/ajax/libs/webfont/1.0.31/webfont.js';
wf.type = 'text/javascript';
wf.async = 'true';
var s = document.getElementsByTagName('script')[0];
s.parentNode.insertBefore(wf, s);
})();
</script>
</body>
</html>
