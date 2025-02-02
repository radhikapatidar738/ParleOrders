<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Connection" %>

<%
String id=request.getParameter("aId");
String oldPwd=request.getParameter("opass");
String newPwd=request.getParameter("npass");
String cNewPwd=request.getParameter("cnpass");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","root");
PreparedStatement st=con.prepareStatement("select * from adminlogintab where     id=? and  password=?");
st.setString(1,id);
st.setString(2,oldPwd);
ResultSet rs=st.executeQuery();
if(rs.next())
{
    if(newPwd.equals(cNewPwd))
    {
PreparedStatement st1=
con.prepareStatement("update adminlogintab set  password=? where id=?");    
st1.setString(1,newPwd);
st1.setString(2,id);
st1.executeUpdate();
response.sendRedirect("responsiblepersonpage.jsp");
    }
    else
    {
        out.println("new password and confirm new password doesnt match");
    }
}
else
{
    out.println("please check id and old password");
}

%>