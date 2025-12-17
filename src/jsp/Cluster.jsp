<%--
 Document : Admin
 Created on : 9 Jul, 2021, 6:10:38 PM
 Author : KishanVenky
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.database.Dbconnection"%>
<%@page import="com.database.Queries"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>FORECASTING AND ANTICIPATORY ESTIMATION OF HUMAN MOVEMENT
PATTERNS</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
</head>
<body id="top">
<div class="wrapper col1">
<div id="header">
<div id="logo" style="width:auto;">
<h1><a href="#">FORECASTING AND ANTICIPATORY ESTIMATION OF HUMAN
MOVEMENT PATTERNS</a></h1>
<p><strong>Based on Application-Collected Location Data</strong></p>
</div>
<br class="clear" />
</div>
</div>
<div class="wrapper col2">
<div id="topbar">
<div id="topnav">
<ul>
<li><a href="AdminHome.jsp">Home</a></li>
<li><a href="Upload.jsp">Upload</a></li>
<li><a href="ViewRecords.jsp">View No.of Records</a></li>
<li><a href="ProcessDataset.jsp">Process Dataset</a></li>
<li class="active"><a href="Cluster.jsp">Cluster</a></li>
<li class="last"><a href="Admin.jsp">Logout</a></li>
</ul>
</div>
<br class="clear" />
</div>
</div>
<h3>Country wise Cluster</h3>
<%
try{
Connection con=Dbconnection.getcon();
Statement st=con.createStatement();
ResultSet rr=Queries.getExecuteQuery("select distinct country from dataset");
while(rr.next()){
String cname=rr.getString(1);
%>
<table border="1">
<tr><th>Country Name</th><th colspan="7"> <font
color="red"><h4><%=cname%></h4></font></th></tr>
<tr> 
<th>Date</th>
<th>Retail_Recreation</th>
<th>Grocery_Pharmacy</th>
<th>Parks</th>
<th>Transit_stations</th>
<th>Workplaces</th>
<th>Residential</th>
<th>Not_enough_Data</th>
</tr>
<%
ResultSet r=st.executeQuery("select * from dataset where country='"+cname+"'");
while(r.next()){
%>
<tr>
<td><%=r.getString(2)%></td>
<td><%=r.getString(3)%></td>
<td><%=r.getString(4)%></td>
<td><%=r.getString(5)%></td>
<td><%=r.getString(6)%></td>
<td><%=r.getString(7)%></td>
<td><%=r.getString(8)%></td>
<td><%=r.getString(9)%></td>
</tr>
</tr>
<%
}
}
}catch(Exception e){
out.println(e);
}
%>
</table>
<div class="wrapper col5">
<div id="container">
<div id="content">
</div>
<div id="column">
</div>
<br class="clear" />
</div>
</div>
<div class="wrapper col6">
<div id="footer">
<br class="clear" />
</div>
</div>
<div class="wrapper col7">
<div id="copyright">
<p class="fl_left">FORECASTING AND ANTICIPATORY ESTIMATION OF HUMAN
MOVEMENT PATTERNS</p>
<br class="clear" />
</div>
</div>
</body>
</html>
