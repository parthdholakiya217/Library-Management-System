<%@ page import="java.sql.*" %>
<%@ page import="com.lms.util.DBConnection" %>
<%@ page language="java" contentType="text/html;charset=UTF-8"%>

<%
    int id = Integer.parseInt(request.getParameter("id"));
    Connection con = DBConnection.getConnection();
    PreparedStatement ps = con.prepareStatement("select * from book where id=?");
    ps.setInt(1,id);

    ResultSet rs = ps.executeQuery();
    rs.next();
%>

<html>
<head>
    <title>Update Book | Library System</title>
</head>

<body bgcolor="#F1F5F9" style="margin:0; font-family: 'Segoe UI', Arial, sans-serif; color: #1E293B;">

<center>
    <br><br><br>

    <table width="450" cellpadding="0" cellspacing="0" 
           style="background:#ffffff; border-radius:12px; box-shadow:0 10px 25px rgba(0,0,0,0.05); padding:40px;">
        
        <tr>
            <td align="left">
                <font size="6" color="#0F172A"><b>Update Book</b></font><br>
                <font size="2" color="#64748B">Modify details for Book ID: #<%=id%></font>
                <br><br><br>
            </td>
        </tr>

        <tr>
            <td>
                <form action="../updateBook" method="post" style="margin:0;">
                    
                    <input type="hidden" name="id" value="<%=rs.getInt("id")%>">
                    
                    <table width="100%" cellpadding="0" cellspacing="0">
                        <tr>
                            <td>
                                <font size="2" color="#475569"><b>Book Title</b></font><br>
                                <input type="text" name="book_name" value="<%=rs.getString("book_name")%>" required
                                style="width:100%; height:42px; border:1px solid #CBD5E1; border-radius:6px; padding:0 12px; margin:8px 0 20px 0; font-size:14px; background:#F8FAFC;">
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <font size="2" color="#475569"><b>Author</b></font><br>
                                <input type="text" name="author" value="<%=rs.getString("author")%>" required
                                style="width:100%; height:42px; border:1px solid #CBD5E1; border-radius:6px; padding:0 12px; margin:8px 0 20px 0; font-size:14px; background:#F8FAFC;">
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <font size="2" color="#475569"><b>Category</b></font><br>
                                <input type="text" name="category" value="<%=rs.getString("category")%>"
                                style="width:100%; height:42px; border:1px solid #CBD5E1; border-radius:6px; padding:0 12px; margin:8px 0 20px 0; font-size:14px; background:#F8FAFC;">
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <font size="2" color="#475569"><b>Quantity in Stock</b></font><br>
                                <input type="number" name="quantity" value="<%=rs.getInt("quantity")%>" min="0" required
                                style="width:100%; height:42px; border:1px solid #CBD5E1; border-radius:6px; padding:0 12px; margin:8px 0 25px 0; font-size:14px; background:#F8FAFC;">
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <input type="submit" value="Update Inventory"
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
                <a href="viewBooks.jsp" style="text-decoration:none;">
                    <font size="2" color="#2563EB"><b>← Back to Book List</b></font>
                </a>
            </td>
        </tr>
    </table>

</center>

</body>
</html>