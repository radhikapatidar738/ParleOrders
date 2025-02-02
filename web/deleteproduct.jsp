<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.util.ArrayList" %>

<%
    String id=request.getParameter("id");
Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/mysql","root","root");

PreparedStatement st=con.prepareStatement(
        "delete from producttable where id=?");
st.setString(1,id);
st.executeUpdate();
response.sendRedirect("viewproduct.jsp");
%>