<%@ page import="java.sql.*"%>
<%@ page import="com.lms.util.DBConnection"%>
<%@ page language="java" contentType="text/html;charset=UTF-8"%>

<html>
<head>
    <title>Issued Books Log | Library System</title>
</head>

<body bgcolor="#F1F5F9" style="margin:0; font-family: 'Segoe UI', Arial, sans-serif; color: #1E293B;">

<center>
    <br><br>

    <table width="90%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td align="left">
                <font size="6" color="#0F172A"><b>📋 Circulation Log</b></font><br>
                <font size="2" color="#64748B">Master list of all issued and returned books</font>
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
            <td style="padding:15px; border-bottom:1px solid #E2E8F0;"><font size="2" color="#475569"><b>TRANS. ID</b></font></td>
            <td style="padding:15px; border-bottom:1px solid #E2E8F0;"><font size="2" color="#475569"><b>STUDENT ID</b></font></td>
            <td style="padding:15px; border-bottom:1px solid #E2E8F0;"><font size="2" color="#475569"><b>BOOK ID</b></font></td>
            <td style="padding:15px; border-bottom:1px solid #E2E8F0;"><font size="2" color="#475569"><b>ISSUE DATE</b></font></td>
            <td style="padding:15px; border-bottom:1px solid #E2E8F0;"><font size="2" color="#475569"><b>RETURN DATE</b></font></td>
            <td align="center" style="padding:15px; border-bottom:1px solid #E2E8F0;"><font size="2" color="#475569"><b>STATUS</b></font></td>
        </tr>

        <%
        try {
            Connection con = DBConnection.getConnection();
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from issue_book order by id desc");
            
            boolean alt = false;
            while(rs.next()){
                String rowBg = alt ? "#FFFFFF" : "#FBFDFF";
                String status = rs.getString("status");
                
                // Status Styling Logic
                String statusBg = "#F1F5F9"; // Default (Issued)
                String statusText = "#475569";
                
                if("Returned".equalsIgnoreCase(status)) {
                    statusBg = "#DCFCE7"; // Light Green
                    statusText = "#166534"; // Dark Green
                } else if ("Issued".equalsIgnoreCase(status)) {
                    statusBg = "#DBEAFE"; // Light Blue
                    statusText = "#1E40AF"; // Dark Blue
                }
        %>

        <tr bgcolor="<%=rowBg%>">
            <td style="padding:15px; border-bottom:1px solid #F1F5F9;">
                <font size="2"><b>#<%=rs.getInt("id")%></b></font>
            </td>
            <td style="padding:15px; border-bottom:1px solid #F1F5F9;">
                <font size="2" color="#64748B">S-<%=rs.getInt("student_id")%></font>
            </td>
            <td style="padding:15px; border-bottom:1px solid #F1F5F9;">
                <font size="2" color="#64748B">B-<%=rs.getInt("book_id")%></font>
            </td>
            <td style="padding:15px; border-bottom:1px solid #F1F5F9;">
                <font size="2"><%=rs.getDate("issue_date")%></font>
            </td>
            <td style="padding:15px; border-bottom:1px solid #F1F5F9;">
                <font size="2"><%=(rs.getDate("return_date") != null) ? rs.getDate("return_date") : "---"%></font>
            </td>
            <td align="center" style="padding:15px; border-bottom:1px solid #F1F5F9;">
                <table border="0" cellpadding="0" cellspacing="0" bgcolor="<%=statusBg%>" style="border-radius:20px;">
                    <tr>
                        <td style="padding:4px 12px;">
                            <font size="1" color="<%=statusText%>"><b><%=status.toUpperCase()%></b></font>
                        </td>
                    </tr>
                </table>
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
    <font size="2" color="#94A3B8">Showing most recent transactions first</font>
    <br><br>

</center>

</body>
</html>