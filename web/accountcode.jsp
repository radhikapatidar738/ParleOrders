<%@page  import="java.sql.Connection" %>
<%@page  import="java.sql.ResultSet" %>
<%@page  import="java.sql.DriverManager" %>
<%@page  import="java.sql.PreparedStatement" %>
<%
String userId=request.getParameter("uId");
String password=request.getParameter("pass");
String post=request.getParameter("post");

Class.forName("com.mysql.jdbc.Driver");//driver name
Connection con=DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/mysql","root","root");//url name

PreparedStatement  st=con.prepareStatement("insert into employeetable values(?,?,?)");
st.setString(1,userId);
st.setString(2,password);
st.setString(3,post);
st.executeUpdate();
con.close();
response.sendRedirect("accountcreation.jsp");
%>


