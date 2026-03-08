<%@ page language="java" contentType="text/html;charset=UTF-8"%>

<html>
<head>
<title>Library Admin Login</title>
</head >

<body bgcolor="#F1F5F9" style="margin:0;font-family:Segoe UI,Arial;">

<center>

<br><br><br><br>

<table width="420" cellpadding="0" cellspacing="0" 
style="background:#ffffff;border-radius:12px;
box-shadow:0 10px 25px rgba(0,0,0,0.15);padding:35px;">

<tr  >
<td align="center" >

<font size="6" color="#0F172A" ><b>Admin Login</b></font><br>
<font size="2" color="#64748B" >🛡️ Secure Login Portal</font>

<br><br><br>

<form action="<%=request.getContextPath()%>/login" method="post" >

<table width="100%" cellpadding="5">

<tr>
<td>
<font size="2"><b>👤Username</b></font><br>

<input type="text" placeholder = "admin@gmail.com"name="username" required
style="width:100%;height:42px;
border:1px solid #CBD5E1;
border-radius:6px;
padding-left:10px;
font-size:14px;">
</td>
</tr>

<tr><td height="10"></td></tr>

<tr>
<td>
<font size="2"><b>🔐Password</b></font><br>

<input type="password" placeholder="••••••••" name="password" required
style="width:100%;height:42px;
border:1px solid #CBD5E1;
border-radius:6px;
padding-left:10px;
font-size:14px;">
</td>
</tr>

<tr><td height="25"></td></tr>

<tr>
<td>

<input type="submit" value="🏠︎  Login to Dashboard"

style="width:100%;
height:45px;
background:#2563EB;
color:white;
border:none;
border-radius:6px;
font-size:15px;
font-weight:bold;
cursor:pointer;">

</td>
</tr>

<tr><td height="20"></td></tr>

<tr>
<td align="center">
<font size="2" color="#94A3B8">
© 2026 Library Management System
</font>
</td>
</tr>

</table>

</form>

</td>
</tr>

</table>

</center>

</body>
</html>