<%--
 Document : Admin
 Created on : 9 Jul, 2021, 6:10:38 PM
 Author : KishanVenky
--%>
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
<li class="active"><a href="Upload.jsp">Upload</a></li>
<li><a href="ViewRecords.jsp">View No.of Records</a></li>
<li><a href="ProcessDataset.jsp">Process Dataset</a></li>
<li><a href="Cluster.jsp">Cluster</a></li>
<li class="last"><a href="Admin.jsp">Logout</a></li>
</ul>
</div>
<br class="clear" />
</div>
</div>
<div class="wrapper col3">
<div id="intro">
<div class="fl_left">
<h3>Upload Dataset Here</h3>
<center>
<form action="ExcelReader" method="post" enctype="multipart/form-data">
<table style="border:1px solid black;height:150px">
<tr><th>Choose DataSet(xlsx)</th><td><input type="file" name="excel"
required=""/></td></tr>
<tr><th></th><td><input type="submit" value="upload" />
<input type="reset" value="Reset" /></td></tr>
</table>
</form>
</center>
</div>
<div class="fl_right"></div>
<br class="clear" />
</div>
</div>
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
<li><a href="AdminHome.jsp">Home</a></li>
