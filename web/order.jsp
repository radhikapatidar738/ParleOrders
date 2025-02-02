<%@page  import="java.sql.Connection" %>
<%@page  import="java.sql.ResultSet" %>
<%@page  import="java.sql.DriverManager" %>
<%@page  import="java.sql.PreparedStatement" %>
<%
String houseno=request.getParameter("Houseno.");
String colony=request.getParameter("colony");
String pincode=request.getParameter("pincode");
String city=request.getParameter("city");
String phoneno=request.getParameter("phoneno.");
String name=request.getParameter("name");


Class.forName("com.mysql.jdbc.Driver");//driver name
Connection con=DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/mysql","root","root");//url name

PreparedStatement  st=con.prepareStatement("insert into ordertable values(?,?,?,?,?,?)");
st.setString(1,houseno);
st.setString(2,colony);
st.setString(3,pincode);
st.setString(4,city);
st.setString(5,phoneno);
st.setString(6,name);
st.executeUpdate();
con.close();
response.sendRedirect("orderform.jsp");
%>


