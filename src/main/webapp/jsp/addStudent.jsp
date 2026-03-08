<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>Add Student | Library System</title>
</head>

<body bgcolor="#F1F5F9" style="margin:0; font-family: 'Segoe UI', Arial, sans-serif; color: #1E293B;">

<center>
    <br><br><br>

    <table width="450" cellpadding="0" cellspacing="0" 
           style="background:#ffffff; border-radius:12px; box-shadow:0 10px 25px rgba(0,0,0,0.05); padding:40px;">
        
        <tr>
            <td align="left">
                <font size="6" color="#0F172A"><b>➡️ Add New Student</b></font><br>
                <font size="2" color="#64748B">Register a new member to the library system</font>
                <br><br><br>
            </td>
        </tr>

        <tr>
            <td>
                <form action="<%=request.getContextPath()%>/addStudent" method="post" style="margin:0;">
                    
                    <table width="100%" cellpadding="0" cellspacing="0">
                        <tr>
                            <td>
                                <font size="2" color="#475569"><b>Full Name</b></font><br>
                                <input type="text" name="name" placeholder="Student Name" required
                                style="width:100%; height:42px; border:1px solid #CBD5E1; border-radius:6px; padding:0 12px; margin:8px 0 20px 0; font-size:14px;">
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <font size="2" color="#475569"><b>Email Address</b></font><br>
                                <input type="email" name="email" placeholder="user12@university.edu"
                                style="width:100%; height:42px; border:1px solid #CBD5E1; border-radius:6px; padding:0 12px; margin:8px 0 20px 0; font-size:14px;">
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <font size="2" color="#475569"><b>Course / Department</b></font><br>
                                <input type="text" name="course" placeholder="Computer Science"
                                style="width:100%; height:42px; border:1px solid #CBD5E1; border-radius:6px; padding:0 12px; margin:8px 0 20px 0; font-size:14px;">
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <font size="2" color="#475569"><b>Mobile Number</b></font><br>
                                <input type="text" name="mobile" placeholder="+91 98245 75345"
                                style="width:100%; height:42px; border:1px solid #CBD5E1; border-radius:6px; padding:0 12px; margin:8px 0 25px 0; font-size:14px;">
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <input type="submit" value="Register Student"
                                style="width:100%; height:45px; background:#2563EB; color:white; border:none; border-radius:6px; font-size:15px; font-weight:bold; cursor:pointer;">
                            </td>
                        </tr>
                    </table>
                    
                </form>
            </td>
        </tr>
    </table>

    <br><br>
    
    <table border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td>
                <a href="dashboard.jsp" style="text-decoration:none;">
                    <font size="2" color="#2563EB"><b>← Back to Dashboard</b></font>
                </a>
            </td>
        </tr>
    </table>

</center>

</body>
</html>