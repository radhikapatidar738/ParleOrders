<%@page  import="java.sql.Connection" %>
<%@page  import="java.sql.ResultSet" %>
<%@page  import="java.sql.DriverManager" %>
<%@page  import="java.sql.PreparedStatement" %>
<%
String cId=request.getParameter("cId");
String tproduct=request.getParameter("tproduct");
String cost=request.getParameter("cost");



Class.forName("com.mysql.jdbc.Driver");//driver name
Connection con=DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/mysql","root","root");//url name

PreparedStatement  st=con.prepareStatement("insert into invoicetable values(?,?,?)");
st.setString(1,cId);
st.setString(2,tproduct);
st.setString(3,cost);
st.executeUpdate();
con.close();
response.sendRedirect("invoiceform.jsp");
%>


