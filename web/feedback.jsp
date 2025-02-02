<%@page  import="java.sql.Connection" %>
<%@page  import="java.sql.ResultSet" %>
<%@page  import="java.sql.DriverManager" %>
<%@page  import="java.sql.PreparedStatement" %>
<%
String id=request.getParameter("id");
String feedback=request.getParameter("Feedback");
String description=request.getParameter("description");



Class.forName("com.mysql.jdbc.Driver");//driver name
Connection con=DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/mysql","root","root");//url name

PreparedStatement st=con.prepareStatement("insert into feedbacktable values(?,?,?)");
st.setString(1,id);
st.setString(2,feedback);
st.setString(3,description);
st.executeUpdate();
con.close();
response.sendRedirect("feedbackform.jsp");
%>


