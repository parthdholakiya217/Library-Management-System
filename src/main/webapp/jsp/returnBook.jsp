<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<html>
<head>
<title>Return Book | Library System</title>
</head>

<body bgcolor="#F1F5F9" style="margin:0; font-family: 'Segoe UI', Arial, sans-serif; color: #1E293B;">

<center>
<br><br><br>

<table width="450" cellpadding="0" cellspacing="0"
style="background:#ffffff; border-radius:12px; box-shadow:0 10px 25px rgba(0,0,0,0.05); padding:40px;">

<tr>
<td align="left">

<font size="6" color="#0F172A"><b>📥 Return Book</b></font><br>
<font size="2" color="#64748B">Process a book return and update inventory</font>

<br><br>

<%
String error = (String)request.getAttribute("error");

if(error != null){
%>

<table width="100%" bgcolor="#FEE2E2"
style="border-radius:6px; padding:10px; border:1px solid #EF4444;">
<tr>
<td>
<font color="#B91C1C"><b><%=error%></b></font>
</td>
</tr>
</table>

<br>

<%
}
%>

</td>
</tr>

<tr>
<td>

<form action="<%=request.getContextPath()%>/returnBook" method="post" style="margin:0;">

<table width="100%" cellpadding="0" cellspacing="0">

<tr>
<td>
<font size="2" color="#475569"><b>Issue Transaction ID</b></font><br>
<input type="number" name="issue_id"
placeholder="Enter the ID from the Issued List" required
style="width:100%; height:42px; border:1px solid #CBD5E1; border-radius:6px; padding:0 12px; margin:8px 0 20px 0; font-size:14px;">
</td>
</tr>

<tr>
<td>
<font size="2" color="#475569"><b>Return Date</b></font><br>
<input type="date" name="return_date" required
style="width:100%; height:42px; border:1px solid #CBD5E1; border-radius:6px; padding:0 12px; margin:8px 0 25px 0; font-size:14px; font-family:inherit; color:#1E293B;">
</td>
</tr>

<tr>
<td>
<input type="submit" value="Process Return"
style="width:100%; height:45px; background:#2563EB; color:white; border:none; border-radius:6px; font-size:15px; font-weight:bold; cursor:pointer;">
</td>
</tr>

<tr>
<td style="padding-top:20px;">
<table width="100%" bgcolor="#FFFBEB"
style="border-radius:6px; padding:10px; border:1px dashed #F59E0B;">
<tr>
<td>
<font size="1" color="#92400E">
<b>Reminder:</b> Inspect the book for any physical damage and verify the return date to check for overdue fines.
</font>
</td>
</tr>
</table>
</td>
</tr>

</table>

</form>

</td>
</tr>

</table>

<br><br>

<table border="0">
<tr>
<td>
<a href="<%=request.getContextPath()%>/jsp/dashboard.jsp" style="text-decoration:none;">
<font size="2" color="#2563EB"><b>← Back to Dashboard</b></font>
</a>
</td>
</tr>
</table>

</center>

</body>
</html>