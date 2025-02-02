<%@page  import="java.sql.Connection" %>
<%@page  import="java.sql.ResultSet" %>
<%@page  import="java.sql.DriverManager" %>
<%@page  import="java.sql.PreparedStatement" %>
<%
String pId=request.getParameter("productId");
String pname=request.getParameter("productname");
String pcategory=request.getParameter("productcategory");
String pdescription=request.getParameter("productdescription");
String pcost=request.getParameter("productcost");

Class.forName("com.mysql.jdbc.Driver");//driver name
Connection con=DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/mysql","root","root");//url name

PreparedStatement  st=con.prepareStatement("insert into producttable values(?,?,?,?,?)");
st.setString(1,pId);
st.setString(2,pname);
st.setString(3,pcategory);
st.setString(4,pdescription);
st.setString(5,pcost);
st.executeUpdate();
con.close();
response.sendRedirect("productform.jsp");
%>


