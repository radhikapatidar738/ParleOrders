
<style>
    a{
        text-decoration: none;
        color:black;
        font-family: arial;
    }
    
    .tdoption:hover{
        background-color:gray;
        color:white;
    }
</style>
<%@include  file="top.jsp" %>

<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.util.ArrayList" %>

<%
Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/mysql","root","root");

PreparedStatement st=con.prepareStatement(
        "select * from feedbacktable");

ResultSet rs=st.executeQuery();
String  id="";
String  feedback="";
String  discription="";
ArrayList list1=new ArrayList();
ArrayList list2=new ArrayList();
ArrayList list3=new ArrayList();
while(rs.next())
{
 list1.add(rs.getString(1)  ) ;
 list2.add(rs.getString(2)  ) ;
 list3.add(rs.getString(3)  ) ;
 
}
%>


<br><br><br>
<h1>FEEDBACK</H1>
<table width="80%" align="center" cellspacing="20"  style="background-color:gray;height:100px">
    <tr align="center" bgcolor="white">
        <td>USER ID</td>
        <td>FEEDBACK</td>
        <td>DESCRIPTION</td>
        <td>DATE</td>
    </tr> 
<%
for(int i=0;i<list1.size();i++)
{
%>
    <tr align="center">
        <td><%=list1.get(i)%></td>
        <td><%=list2.get(i)%></td>
        <td><%=list3.get(i)%></td>
       
    </tr>
    <%}
    %>
</table>

<input type=button value="PRINTOUT" onClick="window.print()"/>

<form action="deletefeedback.jsp" method="post">
<table width="40%" align="center" cellspacing="20"  style="background-color:gray;height:100px">
    <tr>
        <td>
         
<select  style="width:300px"  name="id">
    <option>select id</option>
    <%for(int i=0;i<list1.size();i++)
    {%>
    <option><%=list1.get(i)%></option>
    <%}%>
</select>
        </td>
           <td> <input type="submit" value="Delete" style="width:100px;border-radius: 30px;height:30px;
           background-color:black;color:white;font-size:15px">
        </td>
    </tr>    
</table>
    </form>