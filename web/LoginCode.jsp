<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Connection" %>
<%
String id=request.getParameter("id");
String pwd=request.getParameter("pass");

Class.forName("com.mysql.jdbc.Driver");


Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","root");
PreparedStatement st=con.prepareStatement("select * from publictable where userid=? and password=?");
st.setString(1,id);
st.setString(2,pwd);
ResultSet rs=st.executeQuery();
if(rs.next())
{
    
    Cookie ck=new Cookie("websitename",id);
    ck.setMaxAge(100000);
    response.addCookie(ck);
    session.setAttribute("CALL", id);
    String fullname=rs.getString(1);
   
    
    session.setAttribute("fnm",fullname);
    response.sendRedirect("UserPage.jsp");
}
else
{
out.println("invalid id/password");    
}
%>
