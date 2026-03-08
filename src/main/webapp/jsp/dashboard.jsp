<%@ page language="java" contentType="text/html;charset=UTF-8"%>

<html>
<head>
    <title>Library Admin Dashboard</title>
</head>


<body bgcolor="#F1F5F9" style="margin:0; font-family: 'Segoe UI', Arial, sans-serif; color: #1E293B;">
<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");


if(session.getAttribute("admin")==null){
    response.sendRedirect("login.jsp");
}
%>

<center>
    <table width="100%" bgcolor="#ffffff" border="0" cellpadding="0" cellspacing="0" style="box-shadow: 0 1px 3px rgba(0,0,0,0.1);">
        <tr>
            <td align="center">
                <table width="900" border="0" cellpadding="15" cellspacing="0">
                    <tr>
                        <td width="50%">
                            <font size="5" color="#0F172A"><b>📚 LIBRARY MANAGEMENT SYSTEM</b></font>
                        </td>
                        <td width="50%" align="right">
                            <form action="../logout" style="margin:0;">
                                <input type="submit" value="Sign Out" 
                                style="background:#FEE2E2; color:#991B1B; border:1px solid #FECACA; padding:8px 18px; border-radius:6px; font-weight:600; cursor:pointer;">
                            </form>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>

    <br><br>

    <table width="900" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="60%" valign="top">
                
                <table width="100%" bgcolor="#ffffff" style="border-radius:12px; border:1px solid #E2E8F0; padding:25px; margin-bottom:20px;">
                    <tr>
                        <td>
                            <font size="4" color="#2563EB"><b>📂 Student Directory</b></font><br>
                            <font size="2" color="#64748B">Manage enrollment and student records.</font>
                            <br><br>
                            <table width="100%" border="0">
                                <tr>
                                    <td>
                                        <form action="addStudent.jsp"><input type="submit" value="Add New Student" style="width:100%; height:40px; background:#2563EB; color:white; border:none; border-radius:6px; font-weight:600; cursor:pointer;"></form>
                                    </td>
                                    <td>
                                        <form action="viewStudents.jsp"><input type="submit" value="View All List" style="width:100%; height:40px; background:#F8FAFC; color:#1E293B; border:1px solid #CBD5E1; border-radius:6px; font-weight:600; cursor:pointer;"></form>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>

                <table width="100%" bgcolor="#ffffff" style="border-radius:12px; border:1px solid #E2E8F0; padding:25px;">
                    <tr>
                        <td>
                            <font size="4" color="#2563EB"><b>🗃️ Inventory Management</b></font><br>
                            <font size="2" color="#64748B">Control your book stock and cataloging.</font>
                            <br><br>
                            <table width="100%" border="0">
                                <tr>
                                    <td>
                                        <form action="addBook.jsp"><input type="submit" value="Add New Book" style="width:100%; height:40px; background:#2563EB; color:white; border:none; border-radius:6px; font-weight:600; cursor:pointer;"></form>
                                    </td>
                                    <td>
                                        <form action="viewBooks.jsp"><input type="submit" value="View Catalog" style="width:100%; height:40px; background:#F8FAFC; color:#1E293B; border:1px solid #CBD5E1; border-radius:6px; font-weight:600; cursor:pointer;"></form>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>

            </td>

            <td width="40%" valign="top" style="padding-left:20px;">
                
                <table width="100%" bgcolor="#0F172A" style="border-radius:12px; padding:25px;">
                    <tr>
                        <td>
                            <font size="4" color="#FFFFFF"><b>Quick Circulation</b></font><br>
                            <font size="2" color="#94A3B8">Daily issue & return tasks.</font>
                            <br><br>
                            
                            <form action="issueBook.jsp">
                                <input type="submit" value="📤 Issue a Book" style="width:100%; height:45px; background:#334155; color:white; border:none; border-radius:8px; margin-bottom:10px; text-align:left; padding-left:15px; cursor:pointer;">
                            </form>
                            
                            <form action="returnBook.jsp">
                                <input type="submit" value="📥 Return a Book" style="width:100%; height:45px; background:#334155; color:white; border:none; border-radius:8px; margin-bottom:10px; text-align:left; padding-left:15px; cursor:pointer;">
                            </form>

                            <form action="viewIssuedBooks.jsp">
                                <input type="submit" value="📋 Active Loans" style="width:100%; height:45px; background:#334155; color:white; border:none; border-radius:8px; text-align:left; padding-left:15px; cursor:pointer;">
                            </form>
                        </td>
                    </tr>
                </table>

                <br>
             
            </td>
        </tr>
    </table>

    <br><br>
    <font size="2" color="#94A3B8">© 2026 Library Management System | V 2.4.0</font>

</center>

</body>
</html>