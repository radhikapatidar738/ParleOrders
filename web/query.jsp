<%@page  import="java.sql.Connection" %>
<%@page  import="java.sql.ResultSet" %>
<%@page  import="java.sql.DriverManager" %>
<%@page  import="java.sql.PreparedStatement" %>
<%
String uId=request.getParameter("uId");
String oid=request.getParameter("orderid");
String description=request.getParameter("description");


Class.forName("com.mysql.jdbc.Driver");//driver name
Connection con=DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/mysql","root","root");//url name

PreparedStatement  st=con.prepareStatement("insert into querytable values(?,?,?)");
st.setString(1,uId);
st.setString(2,oid);
st.setString(3,description);

st.executeUpdate();
con.close();
response.sendRedirect("queryform.jsp");
%>


