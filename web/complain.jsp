<%@page  import="java.sql.Connection" %>
<%@page  import="java.sql.ResultSet" %>
<%@page  import="java.sql.DriverManager" %>
<%@page  import="java.sql.PreparedStatement" %>
<%
String complainId=request.getParameter("cId");
String name=request.getParameter("name");
String category=request.getParameter("category");
String description=request.getParameter("description");


Class.forName("com.mysql.jdbc.Driver");//driver name
Connection con=DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/mysql","root","root");//url name

PreparedStatement  st=con.prepareStatement("insert into complaintable values(?,?,?,?)");
st.setString(1,complainId);
st.setString(2,name);
st.setString(3,category);
st.setString(4,description);
st.executeUpdate();
con.close();
response.sendRedirect("complainform.jsp");
%>


