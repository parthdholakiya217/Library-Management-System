<%@ page import="java.sql.*"%>
<%@ page import="com.lms.util.DBConnection"%>
<%@ page language="java" contentType="text/html;charset=UTF-8"%>

<html>
<head>
    <title>View Students | Library System</title>
</head>

<body bgcolor="#F1F5F9" style="margin:0; font-family: 'Segoe UI', Arial, sans-serif; color: #1E293B;">

<center>
    <br><br>

    <table width="90%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td align="left">
                <font size="6" color="#0F172A"><b>📂 Student Directory</b></font><br>
                <font size="2" color="#64748B">Viewing all registered library members</font>
            </td>
            <td align="right" valign="bottom">
                <a href="dashboard.jsp" style="text-decoration:none;">
                    <font size="2" color="#2563EB"><b>← Back to Dashboard</b></font>
                </a>
            </td>
        </tr>
    </table>

    <br>

    <table width="90%" border="0" cellspacing="0" cellpadding="0" 
           style="background:#ffffff; border-radius:12px; box-shadow:0 4px 6px rgba(0,0,0,0.05); overflow:hidden;">
        
        <tr bgcolor="#F8FAFC">
            <td style="padding:15px; border-bottom:1px solid #E2E8F0;"><font size="2" color="#475569"><b>ID</b></font></td>
            <td style="padding:15px; border-bottom:1px solid #E2E8F0;"><font size="2" color="#475569"><b>NAME</b></font></td>
            <td style="padding:15px; border-bottom:1px solid #E2E8F0;"><font size="2" color="#475569"><b>EMAIL</b></font></td>
            <td style="padding:15px; border-bottom:1px solid #E2E8F0;"><font size="2" color="#475569"><b>COURSE</b></font></td>
            <td style="padding:15px; border-bottom:1px solid #E2E8F0;"><font size="2" color="#475569"><b>MOBILE</b></font></td>
            <td align="center" style="padding:15px; border-bottom:1px solid #E2E8F0;"><font size="2" color="#475569"><b>ACTIONS</b></font></td>
        </tr>

        <%
        try {
            Connection con = DBConnection.getConnection();
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from student");
            
            boolean alt = false;
            while(rs.next()){
                String rowBg = alt ? "#FFFFFF" : "#FBFDFF"; // Subtle zebra striping
        %>

        <tr bgcolor="<%=rowBg%>">
            <td style="padding:15px; border-bottom:1px solid #F1F5F9;">
                <font size="2">#<%=rs.getInt("id")%></font>
            </td>
            <td style="padding:15px; border-bottom:1px solid #F1F5F9;">
                <font size="2"><b><%=rs.getString("name")%></b></font>
            </td>
            <td style="padding:15px; border-bottom:1px solid #F1F5F9;">
                <font size="2" color="#64748B"><%=rs.getString("email")%></font>
            </td>
            <td style="padding:15px; border-bottom:1px solid #F1F5F9;">
                <font size="2"><%=rs.getString("course")%></font>
            </td>
            <td style="padding:15px; border-bottom:1px solid #F1F5F9;">
                <font size="2"><%=rs.getString("mobile")%></font>
            </td>
            <td align="center" style="padding:15px; border-bottom:1px solid #F1F5F9;">
                
                <a href="updateStudent.jsp?id=<%=rs.getInt("id")%>" 
                   style="text-decoration:none; background:#F0F9FF; color:#0369A1; padding:6px 12px; border-radius:4px; font-size:12px; font-weight:bold; border:1px solid #BAE6FD;">
                   Edit
                </a>
                &nbsp;
                <a href="../deleteStudent?id=<%=rs.getInt("id")%>" 
                   onclick="return confirm('Are you sure you want to delete this student?')"
                   style="text-decoration:none; background:#FEF2F2; color:#B91C1C; padding:6px 12px; border-radius:4px; font-size:12px; font-weight:bold; border:1px solid #FECACA;">
                   Delete
                </a>

            </td>
        </tr>

        <%
                alt = !alt;
            }
            con.close();
        } catch(Exception e) {
            out.println("Error: " + e.getMessage());
        }
        %>

    </table>

    <br><br>
    <font size="2" color="#94A3B8">Showing all records from the database</font>
    <br><br>

</center>

</body>
</html>