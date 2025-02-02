<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Connection" %>

<%
String id=request.getParameter("Id");
String pass=request.getParameter("pass");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","root");
PreparedStatement st=con.prepareStatement("select * from adminlogintab where     id=? and  password=?");
st.setString(1,id);
st.setString(2,pass);
ResultSet rs=st.executeQuery();
if(rs.next())
{
//    session.setAttribute("CALL", id);
    response.sendRedirect("adminpage.jsp");
}
else
{
out.println("invalid id/password");    
}
%>
