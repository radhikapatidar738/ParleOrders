<%@page  import="java.sql.Connection" %>
<%@page  import="java.sql.ResultSet" %>
<%@page  import="java.sql.DriverManager" %>
<%@page  import="java.sql.PreparedStatement" %>
<%
String fullName=request.getParameter("fNm");
String userId=request.getParameter("uId");
String password=request.getParameter("pass");
String address=request.getParameter("address");
String city=request.getParameter("city");
String gender=request.getParameter("gender");
String dob=request.getParameter("dob");
String contact=request.getParameter("contact");



    
Class.forName("com.mysql.jdbc.Driver");//driver name
Connection con=DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/mysql","root","root");//url name

PreparedStatement  st=con.prepareStatement(
        "insert into publictable values(?,?,?,?,?,?,?,?)");
st.setString(1,fullName);
st.setString(2,userId);
st.setString(3,password);
st.setString(4,address);
st.setString(5,city);
st.setString(6,gender);
st.setString(7,dob);
st.setString(8,contact);
st.executeUpdate();
con.close();
response.sendRedirect("homepage.jsp");
%>